"use client";

import { usePublicProfile, useFollow, useUnfollow, useIsFollowing } from "@/hooks/useProfile";
import { useUserPosts } from "@/hooks/usePosts";
import { useMe } from "@/hooks/useAuth";
import { useState, useEffect } from "react";
import { useParams } from "next/navigation";
import UserProfileView from "./UserProfileView";

interface UserProfileLogicProps {
  userId: string;
}

export default function UserProfileLogic({ userId }: UserProfileLogicProps) {
  const [postsPage, setPostsPage] = useState(1);

  // Extract ID directly from raw window.location.pathname to bypass pre-baked Next.js static params
  const [id, setId] = useState(userId);

  useEffect(() => {
    const pathParts = window.location.pathname.split("/").filter(Boolean);
    const uIndex = pathParts.indexOf("users");
    if (uIndex !== -1 && pathParts[uIndex + 1]) {
      setId(pathParts[uIndex + 1]);
    }
  }, [userId]);

  // Data fetching
  const { data: user, isLoading: isLoadingUser, isError: isUserError } = usePublicProfile(id);
  const { data: posts, isLoading: isLoadingPosts } = useUserPosts(id, postsPage);
  const { data: me } = useMe();
  const { data: isFollowing, isLoading: isCheckingFollow } = useIsFollowing(id);

  // Mutations
  const { mutate: follow, isPending: isFollowingPending } = useFollow(id);
  const { mutate: unfollow, isPending: isUnfollowingPending } = useUnfollow(id);

  // Derived state
  const isSelf = !!me && me.id === id;
  const isLoggedIn = !!me;

  function handleFollowToggle() {
    if (isFollowing) {
      unfollow();
    } else {
      follow();
    }
  }

  function handlePostsPageChange(page: number) {
    setPostsPage(page);
    window.scrollTo({ top: 0, behavior: "smooth" });
  }

  return (
    <UserProfileView
      user={user ?? null}
      posts={posts?.data ?? []}
      postsTotal={posts?.total ?? 0}
      postsCurrentPage={posts?.current_page ?? 1}
      postsLastPage={posts?.last_page ?? 1}
      isLoadingUser={isLoadingUser}
      isLoadingPosts={isLoadingPosts}
      isUserError={isUserError}
      isSelf={isSelf}
      isLoggedIn={isLoggedIn}
      isFollowing={isFollowing ?? false}
      isCheckingFollow={isCheckingFollow}
      isFollowPending={isFollowingPending || isUnfollowingPending}
      onFollowToggle={handleFollowToggle}
      onPostsPageChange={handlePostsPageChange}
    />
  );
}
