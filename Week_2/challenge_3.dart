// ============================================================
// Challenge 3: Decision Making (Pengambilan Keputusan)
// Topik   : Sistem penilaian menggunakan:
//           1. If-Else dan Ternary Operator (skala angka 0-100)
//           2. Switch Case (skala huruf A-E)
// ============================================================

void main() {
  // ============================================================
  // BAGIAN 1: Sistem Penilaian Angka (Skala 0 - 100)
  // Metode: IF-ELSE dan TERNARY OPERATOR
  // ============================================================
  print('===== BAGIAN 1: Penilaian Angka (If-Else & Ternary) =====');

  int nilaiAngka = 85; // Nilai yang akan dinilai (ubah untuk mencoba)
  print('Nilai Ujian: $nilaiAngka');

  // --- Metode 1: If-Else ---
  // Memeriksa kondisi dari atas ke bawah secara berurutan
  String predikatIfElse;
  if (nilaiAngka < 0 || nilaiAngka > 100) {
    predikatIfElse = 'Nilai Invalid'; // Di luar rentang yang valid
  } else if (nilaiAngka >= 91) {
    predikatIfElse = 'Sangat Baik'; // 91 - 100
  } else if (nilaiAngka >= 81) {
    predikatIfElse = 'Baik'; // 81 - 90
  } else if (nilaiAngka >= 71) {
    predikatIfElse = 'Cukup'; // 71 - 80
  } else if (nilaiAngka >= 61) {
    predikatIfElse = 'Kurang'; // 61 - 70
  } else {
    predikatIfElse = 'Sangat Kurang'; // 0 - 60
  }
  print('Predikat (If-Else)          : $predikatIfElse');

  // --- Metode 2: Ternary Operator ---
  // Ternary operator bersarang untuk kondisi bertingkat
  // Format: kondisi ? nilaiJikaBenar : nilaiJikaSalah
  String predikatTernary = (nilaiAngka < 0 || nilaiAngka > 100)
      ? 'Nilai Invalid' // Jika di luar rentang
      : (nilaiAngka >= 91)
      ? 'Sangat Baik' // 91 - 100
      : (nilaiAngka >= 81)
      ? 'Baik' // 81 - 90
      : (nilaiAngka >= 71)
      ? 'Cukup' // 71 - 80
      : (nilaiAngka >= 61)
      ? 'Kurang' // 61 - 70
      : 'Sangat Kurang'; // 0 - 60
  print('Predikat (Ternary Operator)  : $predikatTernary');

  // ============================================================
  // BAGIAN 2: Sistem Penilaian Makanan (Skala Huruf A - E)
  // Metode: SWITCH CASE
  // ============================================================
  print('\n===== BAGIAN 2: Penilaian Makanan (Switch Case) =====');

  String gradeHuruf = 'B'; // Grade yang akan dinilai (ubah untuk mencoba)
  print('Grade Makanan: $gradeHuruf');

  String deskripsiRasa;

  // Switch case mencocokkan nilai gradeHuruf dengan setiap case
  switch (gradeHuruf) {
    case 'A':
      deskripsiRasa = 'Sangat Enak'; // Grade A
      break; // Keluar dari switch setelah case cocok
    case 'B':
      deskripsiRasa = 'Enak'; // Grade B
      break;
    case 'C':
      deskripsiRasa = 'Cukup'; // Grade C
      break;
    case 'D':
      deskripsiRasa = 'Kurang'; // Grade D
      break;
    case 'E':
      deskripsiRasa = 'Belajar Dulu'; // Grade E
      break;
    default:
      // Menangani semua nilai selain A-E
      deskripsiRasa = 'Nilai Invalid';
  }

  print('Deskripsi Rasa (Switch Case) : $deskripsiRasa');
}
