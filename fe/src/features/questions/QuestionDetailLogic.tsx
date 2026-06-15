"use client";

import { useState, useEffect } from "react";
import { useParams, useRouter } from "next/navigation";
import { usePost, useVotePost, useLikePost, useBookmarkPost, useDeletePost } from "@/hooks/usePosts";
import { useComments, useAcceptAnswer } from "@/hooks/useComments";
import { useMe } from "@/hooks/useAuth";
import { usePostEditHistory } from "@/hooks/useModeration";
import QuestionDetailView from "./QuestionDetailView";

interface QuestionDetailLogicProps {
  postId: string;
}

export default function QuestionDetailLogic({ postId }: QuestionDetailLogicProps) {
  const router = useRouter();

  // Extract ID directly from raw window.location.pathname to bypass pre-baked Next.js static params
  const [id, setId] = useState(postId);

  useEffect(() => {
    const pathParts = window.location.pathname.split("/").filter(Boolean);
    const qIndex = pathParts.indexOf("questions");
    if (qIndex !== -1 && pathParts[qIndex + 1]) {
      setId(pathParts[qIndex + 1]);
    }
  }, [postId]);

  // ── Data fetching ───────────────────────────────────────────
  const { data: post, isLoading: isLoadingPost, isError: isPostError } = usePost(id);
  const { data: comments, isLoading: isLoadingComments } = useComments(id);
  const { data: me } = useMe();

  // ── Post mutations ──────────────────────────────────────────
  const { mutate: votePost }     = useVotePost(id);
  const { mutate: likePost }     = useLikePost(id);
  const { mutate: bookmarkPost } = useBookmarkPost(id);
  const { mutate: deletePost, isPending: isDeleting } = useDeletePost();
  const { mutate: acceptAnswer } = useAcceptAnswer(id);

  // ── Permission checks ───────────────────────────────────────
  const isPostOwner = !!me && !!post && me.id === post.user_id;
  const canModerate = !!me?.roles?.some(
    (r) => r.name === "admin" || r.name === "moderator"
  );
  const canEdit = isPostOwner || canModerate;

  const { data: postHistory } = usePostEditHistory(canModerate ? id : "");

  // ── Local state ─────────────────────────────────────────────
  const [replyingToId, setReplyingToId] = useState<string | null>(null);

  // ── Handlers ────────────────────────────────────────────────
  function handleVotePost(vote: 1 | -1) {
    if (!me) { router.push("/login"); return; }
    votePost(vote);
  }

  function handleLikePost() {
    if (!me) { router.push("/login"); return; }
    likePost();
  }

  function handleBookmark() {
    if (!me) { router.push("/login"); return; }
    if (post) bookmarkPost(post);
  }

  function handleDeletePost() {
    if (!confirm("Yakin ingin menghapus pertanyaan ini?")) return;
    deletePost(id, {
      onSuccess: () => router.replace("/"),
    });
  }

  function handleAcceptAnswer(commentId: string) {
    acceptAnswer(commentId);
  }

  return (
    <QuestionDetailView
      post={post}
      comments={comments ?? []}
      me={me ?? null}
      isLoadingPost={isLoadingPost}
      isLoadingComments={isLoadingComments}
      isPostError={isPostError}
      isDeleting={isDeleting}
      isPostOwner={isPostOwner}
      canEdit={canEdit}
      canModerate={canModerate}
      postHistory={postHistory ?? []}
      replyingToId={replyingToId}
      postId={id}
      onVotePost={handleVotePost}
      onLikePost={handleLikePost}
      onBookmark={handleBookmark}
      onDeletePost={handleDeletePost}
      onAcceptAnswer={handleAcceptAnswer}
      onSetReplyingTo={setReplyingToId}
    />
  );
}
