import Cookies from "js-cookie";

export const TOKEN_KEY = "auth_token";

export function setToken(token: string) {
  Cookies.set(TOKEN_KEY, token, { expires: 7 });
  if (typeof window !== "undefined") {
    localStorage.setItem(TOKEN_KEY, token);
  }
}

export function getToken(): string | undefined {
  let token = Cookies.get(TOKEN_KEY);
  if (token === "undefined" || token === "null") {
    token = undefined;
  }
  if (!token && typeof window !== "undefined") {
    token = localStorage.getItem(TOKEN_KEY) || undefined;
    if (token === "undefined" || token === "null") {
      token = undefined;
    }
  }
  return token;
}

export function removeToken() {
  Cookies.remove(TOKEN_KEY);
  if (typeof window !== "undefined") {
    localStorage.removeItem(TOKEN_KEY);
  }
}

export function hasToken(): boolean {
  return !!getToken();
}
