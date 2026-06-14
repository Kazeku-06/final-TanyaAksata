"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";
import { useState } from "react";
import {
  Search,
  Bell,
  Menu,
  X,
  ChevronDown,
  LogOut,
  User,
  Bookmark,
  ShieldCheck,
  LayoutDashboard,
} from "lucide-react";
import { useMe, useLogout } from "@/hooks/useAuth";
import { useUnreadCount } from "@/hooks/useNotifications";
import Avatar from "@/components/ui/Avatar";
import { cn } from "@/lib/utils";

export default function Navbar() {
  const pathname = usePathname();
  const { data: user } = useMe();
  const { mutate: logout, isPending: loggingOut } = useLogout();
  const { data: unreadCount = 0 } = useUnreadCount();
  const [menuOpen, setMenuOpen] = useState(false);
  const [userMenuOpen, setUserMenuOpen] = useState(false);
  const [searchQuery, setSearchQuery] = useState("");

  function handleSearch(e: React.FormEvent) {
    e.preventDefault();
    if (searchQuery.trim()) {
      window.location.href = `/search?q=${encodeURIComponent(searchQuery.trim())}`;
    }
  }

  return (
    <header className="sticky top-0 z-50 bg-[#0f172a]/90 border-b border-slate-800/80 backdrop-blur-md shadow-lg shadow-black/20">
      <div className="max-w-[1264px] mx-auto px-4 sm:px-6 h-16 flex items-center gap-4">
        {/* Logo */}
        <Link href="/" className="flex items-center gap-2.5 flex-shrink-0 group">
          <div className="w-9 h-9 rounded-xl bg-gradient-to-br from-blue-500 via-blue-600 to-indigo-600 flex items-center justify-center border border-blue-400/30 shadow-lg shadow-blue-500/25 group-hover:scale-105 active:scale-95 transition-all duration-300">
            <span className="text-white font-black text-base tracking-wider">T</span>
          </div>
          <span className="font-extrabold text-white text-base hidden sm:block tracking-tight bg-gradient-to-r from-white via-slate-100 to-blue-200 bg-clip-text text-transparent transition-all">
            TanyaAksata
          </span>
        </Link>

        {/* Search */}
        <form onSubmit={handleSearch} className="flex-1 max-w-[480px]">
          <div className="relative group">
            <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-slate-400 group-focus-within:text-blue-400 transition-colors" />
            <input
              type="text"
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              placeholder="Cari pertanyaan..."
              className="w-full pl-9 pr-14 py-2 text-sm border border-slate-800 rounded-xl bg-slate-950/40 text-slate-100 placeholder-slate-500 hover:border-slate-700/80 focus:outline-none focus:border-blue-500/80 focus:bg-slate-950 focus:ring-4 focus:ring-blue-500/10 focus:text-white transition-all duration-300"
            />
            <div className="absolute right-2.5 top-1/2 -translate-y-1/2 hidden md:flex items-center gap-0.5 px-1.5 py-0.5 rounded-md border border-slate-800 bg-slate-900/80 text-[9px] font-bold text-slate-500 select-none">
              <span>Ctrl</span>
              <span>K</span>
            </div>
          </div>
        </form>

        {/* Right side */}
        <div className="flex items-center gap-3 ml-auto">
          {user ? (
            <>
              {/* Notifications */}
              <Link
                href="/notifications"
                className={cn(
                  "p-2.5 rounded-xl text-slate-400 hover:text-white hover:bg-slate-800/60 relative transition-all duration-300 hover:animate-bellshake",
                  pathname === "/notifications" && "bg-slate-800 text-white border border-slate-700/60 shadow-inner"
                )}
                aria-label="Notifikasi"
              >
                <Bell className="w-4.5 h-4.5" />
                {!!unreadCount && unreadCount > 0 && (
                  <span className="absolute top-2 right-2 flex h-2.5 w-2.5">
                    <span className="animate-ping absolute inline-flex h-full w-full rounded-full bg-red-400 opacity-75"></span>
                    <span className="relative inline-flex rounded-full h-2.5 w-2.5 bg-red-500"></span>
                  </span>
                )}
              </Link>

              {/* User menu */}
              <div className="relative">
                <button
                  onClick={() => setUserMenuOpen((v) => !v)}
                  className="flex items-center gap-2 px-2.5 py-1.5 rounded-xl hover:bg-slate-800/60 text-sm text-slate-300 hover:text-white transition-all border border-transparent hover:border-slate-800/80 cursor-pointer"
                >
                  <Avatar name={user.name} avatar={user.avatar} size="xs" className="ring-2 ring-blue-500/20" />
                  <span className="hidden sm:block max-w-[100px] truncate font-medium">
                    {user.name}
                  </span>
                  <ChevronDown className="w-3.5 h-3.5 text-slate-400 group-hover:text-slate-300" />
                </button>

                {userMenuOpen && (
                  <>
                    {/* Backdrop */}
                    <div
                      className="fixed inset-0 z-10"
                      onClick={() => setUserMenuOpen(false)}
                    />
                    <div className="absolute right-0 top-full mt-2 w-56 bg-slate-900 border border-slate-800 rounded-2xl shadow-2xl shadow-black/80 z-20 py-1.5 text-sm animate-in fade-in slide-in-from-top-2 duration-150">
                      <div className="px-4 py-3 border-b border-slate-800/60 bg-slate-950/30 rounded-t-2xl">
                        <p className="font-semibold text-white truncate">{user.name}</p>
                        <p className="text-xs text-blue-400 font-bold mt-0.5">{user.reputation} reputasi</p>
                      </div>

                      <div className="py-1">
                        <Link
                          href="/profile"
                          className="flex items-center gap-2.5 px-4 py-2 hover:bg-slate-800/60 text-slate-300 hover:text-white transition-colors"
                          onClick={() => setUserMenuOpen(false)}
                        >
                          <User className="w-4 h-4 text-slate-400" />
                          <span>Profil Saya</span>
                        </Link>
                        <Link
                          href="/bookmarks"
                          className="flex items-center gap-2.5 px-4 py-2 hover:bg-slate-800/60 text-slate-300 hover:text-white transition-colors"
                          onClick={() => setUserMenuOpen(false)}
                        >
                          <Bookmark className="w-4 h-4 text-slate-400" />
                          <span>Bookmark</span>
                        </Link>
                        {user.roles?.some((r) => r.name === "admin" || r.name === "moderator") && (
                          <Link
                            href="/moderation"
                            className="flex items-center gap-2.5 px-4 py-2 hover:bg-slate-800/60 text-slate-300 hover:text-white transition-colors"
                            onClick={() => setUserMenuOpen(false)}
                          >
                            <ShieldCheck className="w-4 h-4 text-slate-400" />
                            <span>Moderasi</span>
                          </Link>
                        )}
                        {user.roles?.some((r) => r.name === "admin") && (
                          <Link
                            href="/admin"
                            className="flex items-center gap-2.5 px-4 py-2 hover:bg-slate-800/60 text-slate-300 hover:text-white transition-colors"
                            onClick={() => setUserMenuOpen(false)}
                          >
                            <LayoutDashboard className="w-4 h-4 text-slate-400" />
                            <span>Admin</span>
                          </Link>
                        )}
                      </div>

                      <div className="border-t border-slate-800 mt-1 pt-1">
                        <button
                          onClick={() => {
                            setUserMenuOpen(false);
                            logout();
                          }}
                          disabled={loggingOut}
                          className="w-full flex items-center gap-2.5 text-left px-4 py-2 hover:bg-red-500/10 text-red-400 hover:text-red-300 transition-colors cursor-pointer"
                        >
                          <LogOut className="w-4 h-4" />
                          <span>Keluar</span>
                        </button>
                      </div>
                    </div>
                  </>
                )}
              </div>
            </>
          ) : (
            <>
              <Link href="/login">
                <button className="px-4 py-2 text-sm font-semibold text-slate-300 hover:text-white hover:bg-slate-800/40 rounded-xl transition-all duration-200 cursor-pointer">
                  Masuk
                </button>
              </Link>
              <Link href="/register">
                <button className="px-4 py-2 text-sm font-semibold bg-blue-600 hover:bg-blue-500 text-white rounded-xl shadow-lg shadow-blue-600/15 hover:shadow-blue-600/25 transition-all duration-200 hover:-translate-y-0.5 active:translate-y-0 cursor-pointer">
                  Daftar
                </button>
              </Link>
            </>
          )}

          {/* Mobile hamburger */}
          <button
            className="sm:hidden p-2.5 rounded-xl text-slate-400 hover:text-white hover:bg-slate-800/60 transition-colors cursor-pointer"
            onClick={() => setMenuOpen((v) => !v)}
            aria-label="Toggle menu"
          >
            {menuOpen ? <X className="w-5 h-5" /> : <Menu className="w-5 h-5" />}
          </button>
        </div>
      </div>

      {/* Mobile nav */}
      {menuOpen && (
        <nav className="sm:hidden border-t border-slate-800/80 bg-[#0f172a] px-4 py-3.5 flex flex-col gap-1 text-sm shadow-xl animate-in fade-in duration-200">
          <Link href="/" className="px-3 py-2.5 rounded-xl text-slate-300 hover:text-white hover:bg-slate-800/60 transition-all" onClick={() => setMenuOpen(false)}>
            Beranda
          </Link>
          <Link href="/questions" className="px-3 py-2.5 rounded-xl text-slate-300 hover:text-white hover:bg-slate-800/60 transition-all" onClick={() => setMenuOpen(false)}>
            Pertanyaan
          </Link>
          <Link href="/leaderboard" className="px-3 py-2.5 rounded-xl text-slate-300 hover:text-white hover:bg-slate-800/60 transition-all" onClick={() => setMenuOpen(false)}>
            Leaderboard
          </Link>
        </nav>
      )}
    </header>
  );
}
