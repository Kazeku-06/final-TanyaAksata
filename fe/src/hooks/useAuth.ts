"use client";

import { useQuery, useMutation, useQueryClient } from "@tanstack/react-query";
import { getToken, setToken, removeToken } from "@/lib/token";
import api from "@/lib/axios";
import type { User, LoginPayload, RegisterPayload, AuthData } from "@/types";

// ── Fetch current user ──────────────────────────────────────
async function fetchMe(): Promise<User> {
  const { data } = await api.get<{ success: boolean; data: User }>("/auth/me");
  return data.data;
}

export function useMe() {
  return useQuery({
    queryKey: ["me"],
    queryFn: fetchMe,
    enabled: !!getToken(),
    retry: false,
  });
}

// ── Login ───────────────────────────────────────────────────
export function useLogin() {
  const qc = useQueryClient();
  return useMutation({
    mutationFn: async (payload: LoginPayload) => {
      const { data } = await api.post<{ success: boolean; data: AuthData }>(
        "/auth/login",
        payload
      );
      return data.data;
    },
    onSuccess: (data) => {
      setToken(data.token);
      qc.setQueryData(["me"], data.user);
    },
  });
}

// ── Register ────────────────────────────────────────────────
export function useRegister() {
  const qc = useQueryClient();
  return useMutation({
    mutationFn: async (payload: RegisterPayload) => {
      const { data } = await api.post<{ success: boolean; data: AuthData }>(
        "/auth/register",
        payload
      );
      return data.data;
    },
    onSuccess: (data) => {
      setToken(data.token);
      qc.setQueryData(["me"], data.user);
    },
  });
}

// ── Logout ──────────────────────────────────────────────────
export function useLogout() {
  const qc = useQueryClient();
  return useMutation({
    mutationFn: async () => {
      await api.post("/auth/logout");
    },
    onSettled: () => {
      removeToken();
      // Hanya hapus data yang user-specific, bukan semua cache.
      // Posts, categories, dll. adalah data publik — tetap di cache.
      qc.removeQueries({ queryKey: ["me"] });
      qc.removeQueries({ queryKey: ["notifications"] });
      qc.removeQueries({ queryKey: ["bookmarks"] });
      qc.removeQueries({ queryKey: ["me", "following"] });
      window.location.href = "/";
    },
  });
}
