# Flutter Todo App (SQLite + BLoC)

## 📌 Deskripsi Aplikasi

Aplikasi ini adalah aplikasi **Todo sederhana** yang dibuat menggunakan **Flutter**, dengan fitur utama untuk menambahkan, mengedit, dan menghapus item todo. Data disimpan secara lokal menggunakan **SQLite**, dan seluruh state dikelola menggunakan **BLoC (Business Logic Component)**.

Aplikasi ini cocok sebagai contoh implementasi **State Management + Local Database** menggunakan arsitektur yang rapi dan terstruktur.

---

## 🛠️ Teknologi & Arsitektur yang Digunakan

### 📱 Flutter

* Menggunakan kombinasi **StatelessWidget** dan **StatefulWidget** sesuai kebutuhan UI
* Pemisahan UI dan logic

### 🧠 BLoC (flutter_bloc)

* Event & State
* Semua aksi (tambah, edit, hapus) dikontrol oleh BLoC
* UI hanya mendengarkan perubahan state

### 💾 SQLite (sqflite)

* Database lokal untuk menyimpan todo
* Tidak menggunakan Hive sesuai permintaan

### 📂 Struktur Projek Singkat

```
lib/
 ├─ blocs/
 │   └─ todo_bloc.dart
 ├─ db/
 │   └─ db_helper.dart
 ├─ models/
 │   └─ todo.dart
 ├─ screens/
 │   ├─ home_screen.dart
 │   └─ edit_screen.dart
 └─ main.dart
```

---

## ✨ Fitur Utama

✔ Tambah Todo
✔ Tampilkan Daftar Todo
✔ Edit Todo
✔ Hapus Todo
✔ Menyimpan data ke SQLite
✔ BLoC untuk state management

---

## 📦 Dependencies (pubspec.yaml)

```yaml
dependencies:
  flutter:
    sdk: flutter
  sqflite: ^2.3.0
  path: ^1.9.0
  flutter_bloc: ^8.1.3
  equatable: ^2.0.5
```

---

## 🚀 Cara Instalasi & Menjalankan

```bash
# clone repo
git clone <url-repo>
cd <nama-folder-proyek>

# install dependencies
flutter pub get

# jalankan aplikasi
flutter run
```

---

## 📸 Screenshots

*(tambahkan screenshot di sini setelah upload)*

---

## 📝 Catatan Pengembangan

* Menggunakan pola pemisahan File per Layer (UI / Bloc / DB)
* Tidak menggunakan Provider, hanya flutter_bloc
* Menggunakan Future dan async/await untuk operasi database
* Tidak menggunakan description, hanya **title** untuk todo

---

## 📄 Lisensi

Proyek ini bebas digunakan untuk belajar, mengembangkan, dan dimodifikasi.

---

## 👤 Author

Dibuat oleh: **Fadhlurrahman Thoriq**

Jika butuh bantuan atau pengembangan fitur lanjut, silakan hubungi 🙌
