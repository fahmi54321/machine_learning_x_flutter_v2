# Flutter Clean Architecture Project

Project ini menggunakan pendekatan Clean Architecture untuk memastikan kode tetap scalable, maintainable, dan mudah diuji dalam jangka panjang. Struktur ini juga membantu developer baru memahami alur aplikasi dengan cepat.

---

## Architecture Overview

Aplikasi dibagi menjadi tiga layer utama:

presentation → domain → data

Aturan dependency:

- Presentation hanya boleh bergantung ke domain
- Domain tidak boleh bergantung ke layer lain
- Data boleh bergantung ke domain
- Presentation tidak boleh langsung mengakses data layer
- Domain tidak boleh bergantung ke Flutter atau library eksternal seperti Dio

---

## Project Structure

lib/

- core/
- features/
- shared/
- injection/
- dev/

Penjelasan singkat:

- core: berisi logic global dan infrastructure
- features: berisi module berdasarkan fitur
- shared: komponen yang dapat digunakan ulang
- injection: konfigurasi dependency injection
- dev: kebutuhan development atau eksperimen

---

## Layer Responsibilities

### Presentation

Berisi:

- halaman (pages)
- widget
- state management

Tanggung jawab:

- menampilkan data ke user
- menangani interaksi user
- memanggil usecase dari domain

---

### Domain

Berisi:

- entity
- usecase
- repository contract (abstract)

Tanggung jawab:

- menyimpan business logic
- menjadi pusat aturan aplikasi

Catatan:

- harus pure dart
- tidak boleh bergantung ke framework atau API

---

### Data

Berisi:

- datasource (API / local)
- model (DTO)
- repository implementation
- mapper

Tanggung jawab:

- mengambil data dari luar (API, database)
- mengubah data menjadi entity

---

## Data Flow

Alur data dalam aplikasi:

UI → Usecase → Repository → Datasource → API

Dan kembali:

API → Datasource → Repository → Entity → UI

---

## Rules

1. Tidak boleh melakukan API call langsung dari UI

   Semua akses data harus melalui:
   presentation → usecase → repository → datasource

2. Tidak boleh ada duplikasi infrastructure

   Semua konfigurasi network harus berada di core/network

3. Domain harus tetap bersih

   Tidak boleh:
   - import Flutter
   - menggunakan Dio atau API langsung

4. Feature harus terisolasi

   Antar feature tidak boleh saling bergantung secara langsung

5. Semua business logic harus berada di usecase

   UI hanya bertugas memanggil dan menampilkan hasil

---

## Adding New Feature

Langkah umum:

1. Buat folder baru di features:
   features/nama_feature/

2. Tambahkan struktur:
   - data/
   - domain/
   - presentation/

3. Implement:
   - datasource dan repository di data
   - entity dan usecase di domain
   - UI dan state di presentation

4. Daftarkan dependency di folder injection

---

## Goals

Struktur ini dirancang untuk:

- memudahkan pengembangan jangka panjang
- mengurangi kompleksitas kode
- mempermudah testing
- menjaga konsistensi antar developer

## Screenshots

Berikut beberapa tampilan aplikasi:

<p align="center">
  <img src="screenshoots/fashion.png" width="200"/>
  <img src="screenshoots/food.png" width="200"/>
  <img src="screenshoots/insurance.png" width="200"/>
  <img src="screenshoots/salary.png" width="200"/>
</p>

<p align="center">
  <img src="screenshoots/startup.jpg" width="200"/>
</p>
