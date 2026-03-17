# Shared Layer

Shared berisi komponen yang dapat digunakan oleh banyak feature. Layer ini membantu mengurangi duplikasi dan menjaga konsistensi.

---

## Tujuan

- Menyediakan komponen reusable
- Menjaga konsistensi UI dan pola coding
- Mengurangi duplikasi kode

---

## Struktur

shared/

- ui/
- base/
- form/
- listeners/

---

## Penjelasan Module

### ui/

Berisi komponen UI yang bisa digunakan ulang.

Contoh:

- button
- dialog
- loading
- theme

---

### base/

Berisi base class untuk kebutuhan umum.

Contoh:

- base provider / bloc
- base state
- common abstraction

---

### form/

Berisi abstraction untuk pengelolaan form.

Contoh:

- form value
- validation helper

---

### listeners/

Berisi listener global untuk UI.

Contoh:

- global snackbar
- dialog listener
- error listener

---

## Rules

1. Tidak boleh mengandung business logic

   Logic bisnis tetap berada di domain layer.

2. Tidak boleh bergantung ke feature tertentu

   Harus bisa digunakan oleh semua feature.

3. Harus reusable

   Jika hanya digunakan oleh satu feature, jangan taruh di shared.

---

## Catatan

Shared sebaiknya hanya berisi:

- komponen umum
- helper UI
- abstraction yang sering digunakan
