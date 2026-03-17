# Features Layer

Features berisi seluruh module aplikasi yang dibagi berdasarkan fitur. Setiap feature harus berdiri sendiri dan tidak bergantung langsung ke feature lain.

---

## Tujuan

- Memisahkan kode berdasarkan kebutuhan bisnis
- Mempermudah pengembangan dan maintenance
- Membuat struktur lebih scalable

---

## Struktur

feature_name/
data/
domain/
presentation/

---

## Penjelasan Layer

### data/

Berisi implementasi untuk mengambil dan mengelola data.

Isi:

- datasource (API / local)
- model (DTO)
- repository implementation
- mapper

Tanggung jawab:

- komunikasi dengan API atau database
- transform data ke bentuk yang digunakan domain

---

### domain/

Berisi logic utama aplikasi.

Isi:

- entity
- repository (abstract / contract)
- usecase

Tanggung jawab:

- menyimpan business logic
- menjadi pusat aturan aplikasi

Catatan:

- harus pure dart
- tidak boleh bergantung ke Flutter atau API

---

### presentation/

Berisi tampilan aplikasi.

Isi:

- pages (screen)
- widgets
- state management (Provider, Bloc, dll)

Tanggung jawab:

- menampilkan data ke user
- menangani interaksi user
- memanggil usecase

---

## Rules

1. Tidak boleh akses data layer langsung dari UI

   Semua harus melalui usecase.

2. Tidak boleh membuat network sendiri

   Gunakan core/network untuk semua kebutuhan API.

3. Tidak boleh bergantung ke feature lain

   Jika butuh shared logic, gunakan core atau shared.

4. Semua business logic harus di domain

   Jangan letakkan logic di UI atau datasource.

---

## Catatan

Setiap feature harus:

- terisolasi
- mudah diuji
- mudah dikembangkan tanpa mempengaruhi feature lain
