# Flutter Todo App (SQLite + BLoC)

## 📌 Deskripsi Aplikasi

Aplikasi ini adalah aplikasi **Todo sederhana** yang dibuat menggunakan **Flutter**, dengan fitur utama untuk menambahkan, mengedit, dan menghapus item todo. Data disimpan secara lokal menggunakan **SQLite**, dan seluruh state dikelola menggunakan **BLoC (Business Logic Component)**.

Aplikasi ini menerapkan implementasi **State Management + Local Database** menggunakan arsitektur yang rapi dan terstruktur.

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
* Tidak menggunakan Hive untuk penyimpanan data nya

### 📂 Struktur Projek Singkat

```
lib/
 ├─ data/
 │   ├─ db.dart
 │   └─ todo_model.dart
 ├─ logic/
 │   ├─ todo_bloc.dart
 │   ├─ todo_event.dart
 |   └─ todo_state.dart
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
  flutter_bloc: ^8.1.3
  equatable: ^2.0.5
  sqflite: ^2.3.2
  path: ^1.9.0
  path_provider: ^2.1.4
```

---

## 🚀 Cara Instalasi & Menjalankan

```bash
# clone repo
git clone <https://github.com/fadhlurthoriq/todo-app>
cd <todo-app>

# install dependencies
flutter pub get

# jalankan aplikasi
flutter run
```

---

## 📸 Screenshots

<img src="https://github.com/user-attachments/assets/f7627c0e-35b9-40bb-b3e7-06e0219d52fa" width="300"> 
<img src="https://github.com/user-attachments/assets/c5ea9283-ceb7-4afd-b498-876ddf4804cb" width="300">
<img src="https://github.com/user-attachments/assets/4975a46f-0f70-4f6d-82c8-76040855b6f8" width="300">
<img src="https://github.com/user-attachments/assets/0029cb16-0a23-4fc7-a7b1-8fe00fa3f3db" width="300">
<img src="https://github.com/user-attachments/assets/d7949090-147f-40eb-9b3c-9b27d58ae14f" width="300">
<img src="https://github.com/user-attachments/assets/c6f1b8da-8aad-4cc2-ad80-e9140d685e13" width="300">

---

## 📝 Catatan Pengembangan

* Menggunakan pola pemisahan File per Layer (UI / Bloc / DB)
* Tidak menggunakan Provider, hanya flutter_bloc
* Menggunakan Future dan async/await untuk operasi database

---

## 👤 Author

Dibuat oleh: **M. Fadhlurrahman Thoriq** & 
             **Raffi Gani Jabbaru**

