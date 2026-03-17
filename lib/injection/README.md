# Dependency Injection

Layer ini mengatur seluruh dependency yang digunakan dalam aplikasi. Semua object harus didaftarkan di sini untuk menjaga konsistensi dan memudahkan testing.

---

## Tujuan

- Menghindari pembuatan object secara manual
- Mempermudah pengelolaan dependency
- Mendukung testing (mocking)

---

## Struktur

injection/

- core_injection.dart
- external_injection.dart
- features/
- injection.dart

---

## Penjelasan

### core_injection.dart

Berisi dependency yang berasal dari core. Contoh:

- network client
- services
- utils

---

### external_injection.dart

Berisi dependency dari library eksternal. Contoh:

- Dio
- shared preferences
- database

---

### features/

Berisi dependency untuk masing-masing feature. Setiap feature memiliki file injection sendiri.

---

### injection.dart

Entry point untuk mendaftarkan semua dependency. Biasanya dipanggil di awal aplikasi (main).

---

## Rules

1. Tidak boleh membuat instance secara manual di dalam feature

   Semua harus melalui dependency injection.

2. Semua dependency harus didaftarkan di layer ini

   Agar mudah dikontrol dan diubah.

3. Gunakan pattern yang konsisten

   Misalnya:
   - singleton
   - factory

---

## Catatan

Dengan dependency injection:

- kode menjadi lebih fleksibel
- lebih mudah untuk testing
- lebih mudah untuk maintenance
