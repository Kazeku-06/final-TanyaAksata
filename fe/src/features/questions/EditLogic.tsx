"use client";

import { useState, useEffect } from "react";
import { useParams, useRouter } from "next/navigation";
import { usePost, useUpdatePost } from "@/hooks/usePosts";
import { useCategories } from "@/hooks/useCategories";
import { useEditForm } from "./useEditForm";
import { type UpdatePostFormData } from "@/lib/schemas";
import EditView from "./EditView";

interface EditLogicProps {
  postId: string;
}

export default function EditLogic({ postId }: EditLogicProps) {
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

  const { data: post, isLoading: isLoadingPost, isError: isPostError } = usePost(id);
  const { mutate: updatePost, isPending } = useUpdatePost(id);
  const { data: categories, isLoading: isLoadingCategories } = useCategories(true);

  const {
    form,
    tags,
    tagInput,
    setTagInput,
    addTag,
    removeTag,
    handleTagKeyDown,
  } = useEditForm(post);

  const { setError, formState: { errors } } = form;

  function handleSubmit(data: UpdatePostFormData) {
    updatePost(
      {
        title: data.title,
        body: data.body,
        category_id: data.category_id,
        tags: data.tags,
        edit_summary: data.edit_summary || undefined,
      },
      {
        onSuccess: () => {
          router.push(`/questions/${id}`);
        },
        onError: (err: unknown) => {
          const axiosErr = err as {
            response?: { data?: { errors?: Record<string, string[]>; message?: string } };
          };
          const apiErrors = axiosErr?.response?.data?.errors;
          if (apiErrors) {
            for (const [key, messages] of Object.entries(apiErrors)) {
              setError(key as keyof UpdatePostFormData, { message: messages[0] });
            }
          } else {
            setError("root", {
              message: axiosErr?.response?.data?.message || "Terjadi kesalahan",
            });
          }
        },
      }
    );
  }

  return (
    <EditView
      form={form}
      isPending={isPending}
      rootError={errors.root?.message}
      isLoadingPost={isLoadingPost}
      isPostError={isPostError}
      categories={categories ?? []}
      isLoadingCategories={isLoadingCategories}
      tags={tags}
      tagInput={tagInput}
      editCount={post?.edit_count ?? 0}
      onSubmit={form.handleSubmit(handleSubmit)}
      onTagInputChange={setTagInput}
      onTagKeyDown={handleTagKeyDown}
      onTagBlur={addTag}
      onTagRemove={removeTag}
      onCancel={() => router.back()}
    />
  );
}
