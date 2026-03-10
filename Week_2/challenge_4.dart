// ============================================================
// Challenge 4: Looping (Perulangan)
// Topik   : Membuat pola bintang menggunakan perulangan (loop)
//           1. Pola Segitiga Siku Ascending (n = 5)
//           2. Pola Segitiga Terbalik Descending (n = 5)
// ============================================================

import 'dart:io'; // Import dart:io untuk menggunakan stdout.write

void main() {
  int n = 5; // Jumlah baris pola bintang

  // ============================================================
  // POLA 1: Segitiga Siku Ascending (Naik)
  // Setiap baris ke-i menampilkan sebanyak i bintang
  // ============================================================
  print('===== POLA 1: Segitiga Siku Ascending (n = $n) =====');

  // Perulangan luar: mengontrol jumlah baris (dari baris 1 sampai n)
  for (int baris = 1; baris <= n; baris++) {
    // Perulangan dalam: mencetak bintang sebanyak nilai 'baris' saat ini
    for (int bintang = 1; bintang <= baris; bintang++) {
      // stdout.write digunakan agar bintang dicetak dalam SATU BARIS (tanpa newline)
      stdout.write('*');
    }
    // Setelah semua bintang di baris ini selesai, pindah ke baris baru
    stdout.write('\n');
  }

  // ============================================================
  // POLA 2: Segitiga Terbalik Descending (Turun)
  // Setiap baris ke-i menampilkan sebanyak (n - i + 1) bintang
  // ============================================================
  print('\n===== POLA 2: Segitiga Terbalik Descending (n = $n) =====');

  // Perulangan luar: dimulai dari n, berkurang hingga 1
  for (int baris = n; baris >= 1; baris--) {
    // Perulangan dalam: mencetak bintang sebanyak nilai 'baris' saat ini
    for (int bintang = 1; bintang <= baris; bintang++) {
      // stdout.write agar bintang dicetak sejajar dalam satu baris
      stdout.write('*');
    }
    // Pindah ke baris baru setelah semua bintang di baris ini dicetak
    stdout.write('\n');
  }
}
