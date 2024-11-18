# CookingApps

CookingApps adalah aplikasi manajemen resep masakan yang dirancang untuk membantu pengguna mengelola resep mereka dengan mudah. Aplikasi ini memiliki fitur lengkap seperti autentikasi pengguna, pengelolaan resep (CRUD), pemberitahuan (notification), dan lainnya. Aplikasi ini dikembangkan menggunakan arsitektur VIPER untuk memastikan skalabilitas dan pemisahan tanggung jawab yang jelas.

---

## Fitur Utama

- **Autentikasi**
  - Login dan Register untuk pengguna.
- **Manajemen Resep (CRUD Receipt)**
  - Tambah, baca, edit, dan hapus resep masakan.
- **Profil**
  - Lihat dan perbarui informasi profil pengguna.
- **Menu Resep**
  - Lihat daftar resep masakan yang tersedia.
- **Notifikasi**
  - Pemberitahuan terkait aktivitas atau status aplikasi.
- **Logout**
  - Keluar dari aplikasi dengan aman.

---

## Halaman

1. **SplashPage** - Halaman awal aplikasi.
2. **Onboarding First** - Halaman pengenalan aplikasi (1).
3. **Onboarding Second** - Halaman pengenalan aplikasi (2).
4. **LoginPage** - Halaman login pengguna.
5. **RegisterPage** - Halaman registrasi pengguna baru.
6. **HomePage** - Halaman utama aplikasi setelah login.
7. **SearchReceiptPage** - Halaman pencarian resep.
8. **NotificationPage** - Halaman pemberitahuan.
9. **ListReceiptPage** - Halaman daftar resep.
10. **ListReceiptPage - EmptyData** - Halaman daftar resep saat data kosong.
11. **DetailReceipt** - Halaman detail resep tertentu.
12. **AddReceipt - OnBoard** - Halaman awal untuk menambah resep.
13. **TakePicturePage** - Halaman untuk mengambil gambar resep.
14. **TakePicturePage - Validation** - Halaman validasi gambar yang diambil.
15. **AddDataReceipt - Add** - Halaman awal menambahkan data resep.
16. **AddDataReceipt - Fill Form** - Halaman form pengisian resep.
17. **AddDataReceipt - FormFilled** - Halaman form setelah terisi.
18. **AddDataReceipt - Data Added** - Halaman konfirmasi data berhasil ditambahkan.
19. **AddDataReceipt - ConfirmData** - Halaman konfirmasi data resep sebelum disimpan.
20. **AddDataReceipt - addValError** - Halaman validasi error pada data resep.
21. **HomePage - SuccessAddData** - Halaman home setelah data berhasil ditambahkan.
22. **HomePage - FailedAddData** - Halaman home setelah penambahan data gagal.

---

## Instalasi dan Konfigurasi

Ikuti langkah-langkah berikut untuk menjalankan CookingApps di lokal:

### Prasyarat

- **Xcode** versi terbaru (disarankan minimal Xcode 14).
- **Swift** minimal versi 5.5.
- **CocoaPods** (jika menggunakan dependensi eksternal).

### Langkah Instalasi

1. **Clone Repository**
   ```bash
   git clone https://github.com/username/CookingApps.git
   cd CookingApps
    bash```

2. **Install dependensi menggunakan CocoaPods
pod install**

3. **Buka proyek menggunakan Xcode
open CookingApps.xcworkspace **
