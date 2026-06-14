# Proyek Final - Tanya Aksata

Selamat datang di repositori resmi proyek **Tanya Aksata**. Proyek ini dikembangkan secara kolaboratif oleh **Kelompok 8** untuk membangun platform digital yang dinamis, responsif, dan terintegrasi penuh antara sisi *Client-side* (Front-End) dan *Server-side* (Back-End).

---

## 👥 Struktur Tim & Pembagian Tugas (Kelompok 8)

Untuk memaksimalkan efisiensi kerja, Kelompok 8 dibagi menjadi dua sub-tim utama dengan spesialisasi masing-masing:

### 🎨 Front-End (FE) Team
Fokus pada pengembangan antarmuka pengguna (UI), pengalaman pengguna (UX), manajemen *state* di sisi klien, dan konsumsi data dari server.
* **Pratama** — Front-End Engineer (UI Slicing & API Integration)
* **Reisya** — Front-End Engineer (Component Architecture & Routing)
* **Silvi** — Front-End Engineer (State Management & Form Validation)

### ⚙️ Back-End (BE) Team
Fokus pada penyediaan arsitektur server, keamanan, manajemen basis data, dan penyediaan seluruh kebutuhan data melalui API.
* **Naufal** — Back-End Engineer (Database Design, API Development & Security)

---

## 🎯 Detail Kontribusi & Alur Kerja Tim

### 💻 1. Tim Front-End (Pratama, Reisya, Silvi)
Tim Front-End bertanggung jawab penuh terhadap apa yang dilihat dan berinteraksi langsung dengan pengguna. Detail tugas yang dilakukan meliputi:
* **Arsitektur Komponen & Slicing:** Mengimplementasikan desain UI menjadi komponen-komponen kode yang bersih, modular, dan *reusable* (dapat digunakan kembali).
* **Data Fetching & State Management:** Menggunakan pustaka modern (seperti *React Query / TanStack Query*) dan *Axios* untuk melakukan *fetching*, *caching*, dan sinkronisasi data dari Back-End agar performa aplikasi tetap cepat.
* **Routing & Autentikasi Client:** Mengatur alur perpindahan halaman (navigasi) dan menjaga proteksi halaman agar pengguna yang belum login tidak bisa masuk ke halaman privat.
* **Penanganan Error & Validasi:** Membuat validasi form yang interaktif serta menampilkan pesan error atau *loading* yang ramah bagi pengguna saat berinteraksi dengan sistem.

### 🛠️ 2. Tim Back-End (Naufal)
Tim Back-End bertanggung jawab sebagai tulang punggung sistem yang memproses seluruh logika bisnis aplikasi. Detail tugas yang dilakukan meliputi:
* **Perancangan Database & Skema:** Merancang struktur tabel, relasi, dan optimasi basis data untuk memastikan penyimpanan data aplikasi Tanya Aksata aman dan efisien.
* **Pengembangan RESTful API:** Membangun titik akhir (*endpoints*) API yang modular untuk proses CRUD (Create, Read, Update, Delete) pada fitur-fitur utama proyek.
* **Sistem Autentikasi & Keamanan:** Mengimplementasikan protokol keamanan, enkripsi kata sandi, serta pengamanan *endpoints* menggunakan sistem Token (seperti JWT) untuk memverifikasi hak akses pengguna.
* **Dokumentasi API:** Menyediakan panduan atau kontrak API yang jelas agar mempermudah tim Front-End dalam memahami format data yang dikirim dan diterima oleh server.

---

## 🤝 Alur Kolaborasi Tim
Kelompok 8 menerapkan alur kerja berbasis **Gitflow**:
1. Tim BE (Naufal) merancang database dan merilis *endpoint* API awal.
2. Tim FE (Pratama, Reisya, Silvi) mengonsumsi API tersebut menggunakan metode *asynchronous requests* untuk merender data dinamis pada halaman web.
3. Seluruh anggota tim berkolaborasi langsung di repositori ini dengan melakukan *Pull Request* dan *Code Review* sebelum fitur digabungkan ke cabang utama (*main/master*).