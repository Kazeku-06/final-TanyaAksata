"use client";

import Link from "next/link";
import { MessageCircle, Heart, Globe } from "lucide-react";

function Github({ className }: { className?: string }) {
  return (
    <svg
      viewBox="0 0 24 24"
      fill="none"
      stroke="currentColor"
      strokeWidth="2"
      strokeLinecap="round"
      strokeLinejoin="round"
      className={className}
    >
      <path d="M15 22v-4a4.8 4.8 0 0 0-1-3.5c3 0 6-2 6-5.5.08-1.25-.27-2.48-1-3.5.28-1.15.28-2.35 0-3.5 0 0-1 0-3 1.5-2.64-.5-5.36-.5-8 0C6 2 5 2 5 2c-.3 1.15-.3 2.35 0 3.5A5.403 5.403 0 0 0 4 9c0 3.5 3 5.5 6 5.5-.39.49-.68 1.05-.85 1.65-.17.6-.22 1.23-.15 1.85v4" />
      <path d="M9 18c-4.51 2-5-2-7-2" />
    </svg>
  );
}

function Twitter({ className }: { className?: string }) {
  return (
    <svg
      viewBox="0 0 24 24"
      fill="none"
      stroke="currentColor"
      strokeWidth="2"
      strokeLinecap="round"
      strokeLinejoin="round"
      className={className}
    >
      <path d="M22 4s-.7 2.1-2 3.4c1.6 10-9.4 17.3-18 11.6 2.2.1 4.4-.6 6-2C3 15.5.5 9.6 3 5c2.2 2.6 5.6 4.1 9 4-.9-4.2 4-6.6 7-3.8 1.1 0 3-1.2 3-1.2z" />
    </svg>
  );
}

export default function Footer() {
  return (
    <footer className="bg-slate-950 text-slate-400 mt-auto border-t border-slate-900 w-full font-sans transition-all duration-300">
      <div className="max-w-[1264px] mx-auto px-6 py-12">
        <div className="grid grid-cols-1 md:grid-cols-5 gap-8 mb-12">
          {/* Brand & Description */}
          <div className="md:col-span-2 space-y-4">
            <Link href="/" className="flex items-center gap-2 group w-fit">
              <div className="w-8 h-8 rounded-lg bg-gradient-to-br from-blue-500 via-blue-600 to-indigo-600 flex items-center justify-center border border-blue-400/20 shadow-md shadow-blue-500/10 group-hover:scale-105 transition-transform duration-300">
                <MessageCircle className="w-4.5 h-4.5 text-white" />
              </div>
              <span className="font-extrabold text-white text-base tracking-tight bg-gradient-to-r from-white to-slate-200 bg-clip-text text-transparent">
                TanyaAksata
              </span>
            </Link>
            <p className="text-xs text-slate-400 leading-relaxed max-w-sm">
              Komunitas tanya jawab pengembang Indonesia. Tempat terbaik untuk bertanya, berbagi pengetahuan, dan belajar bersama rekan-rekan pengembang di seluruh nusantara.
            </p>
            {/* Social Links */}
            <div className="flex items-center gap-2.5 pt-2">
              <a
                href="https://github.com"
                target="_blank"
                rel="noopener noreferrer"
                className="p-2 rounded-xl bg-slate-900 border border-slate-800 text-slate-400 hover:text-white hover:border-slate-700 hover:bg-slate-800/50 hover:shadow-lg hover:shadow-black/25 transition-all duration-300 cursor-pointer"
                aria-label="GitHub"
              >
                <Github className="w-4 h-4" />
              </a>
              <a
                href="https://twitter.com"
                target="_blank"
                rel="noopener noreferrer"
                className="p-2 rounded-xl bg-slate-900 border border-slate-800 text-slate-400 hover:text-white hover:border-slate-700 hover:bg-slate-800/50 hover:shadow-lg hover:shadow-black/25 transition-all duration-300 cursor-pointer"
                aria-label="Twitter"
              >
                <Twitter className="w-4 h-4" />
              </a>
              <a
                href="https://tanyaaksata.com"
                className="p-2 rounded-xl bg-slate-900 border border-slate-800 text-slate-400 hover:text-white hover:border-slate-700 hover:bg-slate-800/50 hover:shadow-lg hover:shadow-black/25 transition-all duration-300 cursor-pointer"
                aria-label="Website"
              >
                <Globe className="w-4 h-4" />
              </a>
            </div>
          </div>

          {/* Navigation Links */}
          <div>
            <h4 className="font-bold text-xs uppercase tracking-wider mb-4 text-slate-200">
              Navigasi
            </h4>
            <ul className="space-y-2 text-xs">
              <li>
                <Link href="/" className="hover:translate-x-1 hover:text-blue-400 transition-all duration-300 block py-0.5">
                  Beranda
                </Link>
              </li>
              <li>
                <Link href="/questions" className="hover:translate-x-1 hover:text-blue-400 transition-all duration-300 block py-0.5">
                  Pertanyaan
                </Link>
              </li>
              <li>
                <Link href="/search" className="hover:translate-x-1 hover:text-blue-400 transition-all duration-300 block py-0.5">
                  Pencarian
                </Link>
              </li>
              <li>
                <Link href="/leaderboard" className="hover:translate-x-1 hover:text-blue-400 transition-all duration-300 block py-0.5">
                  Leaderboard
                </Link>
              </li>
            </ul>
          </div>

          {/* Community Links */}
          <div>
            <h4 className="font-bold text-xs uppercase tracking-wider mb-4 text-slate-200">
              Komunitas
            </h4>
            <ul className="space-y-2 text-xs">
              <li>
                <Link href="/bookmarks" className="hover:translate-x-1 hover:text-blue-400 transition-all duration-300 block py-0.5">
                  Bookmark Saya
                </Link>
              </li>
              <li>
                <Link href="/notifications" className="hover:translate-x-1 hover:text-blue-400 transition-all duration-300 block py-0.5">
                  Notifikasi
                </Link>
              </li>
              <li>
                <Link href="/profile" className="hover:translate-x-1 hover:text-blue-400 transition-all duration-300 block py-0.5">
                  Profil Saya
                </Link>
              </li>
            </ul>
          </div>

          {/* Newsletter Subscribe */}
          <div className="space-y-3">
            <h4 className="font-bold text-xs uppercase tracking-wider text-slate-200">
              Langganan Update
            </h4>
            <p className="text-xs text-slate-400 leading-relaxed">
              Dapatkan ringkasan pertanyaan terbaik dan tren teknologi setiap minggu.
            </p>
            <form onSubmit={(e) => e.preventDefault()} className="flex gap-2 pt-1">
              <input
                type="email"
                placeholder="Email Anda"
                className="w-full px-3.5 py-2 text-xs border border-slate-800 rounded-xl bg-slate-900/60 text-slate-200 placeholder-slate-600 focus:outline-none focus:border-blue-500/80 focus:bg-slate-950 transition-all duration-300"
              />
              <button
                type="submit"
                className="px-3.5 py-2 bg-blue-600 hover:bg-blue-500 text-white font-semibold text-xs rounded-xl shadow-lg shadow-blue-600/10 hover:shadow-blue-600/20 hover:-translate-y-0.5 active:translate-y-0 transition-all duration-300 cursor-pointer"
              >
                Ikut
              </button>
            </form>
          </div>
        </div>

        {/* Divider & Copyright info */}
        <div className="border-t border-slate-900 pt-8 flex flex-col sm:flex-row items-center justify-between gap-4">
          <div className="flex flex-col sm:flex-row items-center gap-2 sm:gap-6 text-[11px] text-slate-500 text-center sm:text-left">
            <span>&copy; 2026 TanyaAksata. All rights reserved.</span>
            <div className="flex gap-3">
              <Link href="/terms" className="hover:text-slate-350 transition-colors">Syarat & Ketentuan</Link>
              <span>·</span>
              <Link href="/privacy" className="hover:text-slate-350 transition-colors">Kebijakan Privasi</Link>
            </div>
          </div>
          <p className="text-[11px] text-slate-550 flex items-center gap-1.5 justify-center sm:justify-end">
            di buat oleh kelompok 8
          </p>
        </div>
      </div>
    </footer>
  );
}