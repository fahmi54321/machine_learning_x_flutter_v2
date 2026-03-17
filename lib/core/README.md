# Core Layer

Core berisi logic global dan infrastruktur yang digunakan oleh seluruh aplikasi. Semua yang ada di dalam core harus bersifat reusable dan tidak bergantung pada feature tertentu.

---

## Tujuan

- Menyediakan kebutuhan dasar aplikasi (network, error handling, dll)
- Menjadi fondasi yang bisa digunakan oleh semua feature
- Menghindari duplikasi kode di berbagai tempat

---

## Struktur

core/

- app/
- network/
- error/
- services/
- utils/

---

## Penjelasan Module

### app/

Mengatur kebutuhan global aplikasi.

Contoh:

- navigation handler
- global state (misalnya auth state)
- event global (login, logout, session)

---

### network/

Berisi konfigurasi komunikasi API.

Contoh:

- HTTP client (Dio)
- interceptor (auth, logging, retry, error handling)

Catatan:
Semua request API harus melalui layer ini.

---

### error/

Mengatur standar error handling di seluruh aplikasi.

Biasanya terdiri dari:

- exception (dari data layer)
- failure (untuk domain layer)
- mapping error ke pesan yang bisa ditampilkan ke UI

---

### services/

Berisi service global non-UI.

Contoh:

- global loading handler
- dialog handler
- overlay service

---

### utils/

Helper atau fungsi kecil yang dapat digunakan ulang.

Contoh:

- formatter
- extension
- helper function sederhana

Catatan:

- tidak boleh memiliki state
- tidak boleh mengandung business logic kompleks

---

## Rules

1. Tidak boleh bergantung ke feature

   Core harus berdiri sendiri dan bisa digunakan oleh semua feature.

2. Tidak boleh berisi business logic spesifik

   Logic bisnis harus berada di domain layer (feature).

3. Semua konfigurasi network harus di sini

   Tidak boleh ada implementasi HTTP di dalam feature.

4. Harus reusable

   Semua yang dibuat di core harus bisa digunakan ulang.

---

## Catatan Penting

Jika suatu logic hanya digunakan oleh satu feature, maka tidak boleh dimasukkan ke core.

Core hanya untuk kebutuhan yang benar-benar bersifat global.
