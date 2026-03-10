// ============================================================
// Latihan 1: Variabel & Tipe Data
// Topik   : Mendeklarasikan variabel dengan tipe data yang tepat
//           dan mencetak data restoran secara terstruktur.
// ============================================================

void main() {
  // --- Data Umum Restoran ---
  String namaRestoran = 'Electra Seafood'; // Tipe String untuk teks
  int tahunDidirikan = 2023; // Tipe int untuk angka bulat (tahun)
  String pemilik = 'Mbok Yem'; // Tipe String untuk nama
  String alamat =
      'JL. Prof. Soedarto, SH, Tembalang'; // Tipe String untuk alamat
  bool statusBuka = true; // Tipe bool: true = Buka, false = Tutup

  // --- Daftar Menu Makanan (wajib menggunakan Map) ---
  // Key: nama makanan (String), Value: harga dalam ribuan rupiah (int)
  Map<String, int> daftarMakanan = {
    'Kepiting Rebus': 40000,
    'Nasi Goreng': 20000,
    'Udang Asam Manis': 50000,
    'Sate Cumi': 30000,
  };

  // --- Daftar Menu Minuman (wajib menggunakan Map) ---
  // Key: nama minuman (String), Value: harga dalam ribuan rupiah (int)
  Map<String, int> daftarMinuman = {
    'Es Jeruk': 5000,
    'Es Teh': 2000,
    'Es Jus': 6000,
  };

  // ============================================================
  // Mencetak seluruh data restoran
  // ============================================================
  print('========================================');
  print('       INFORMASI RESTORAN               ');
  print('========================================');
  print('Nama Restoran    : $namaRestoran');
  print('Tahun Didirikan  : $tahunDidirikan');
  print('Pemilik          : $pemilik');
  print('Alamat           : $alamat');
  // Menggunakan ekspresi ternary untuk mengonversi bool ke teks
  print('Status           : ${statusBuka ? "Buka" : "Tutup"}');

  // --- Mencetak Daftar Makanan dari Map ---
  print('\n--- Daftar Makanan ---');
  // Iterasi setiap pasangan key-value di dalam Map daftarMakanan
  daftarMakanan.forEach((namaMakanan, harga) {
    // Mencetak nama makanan dan harga yang diformat dengan titik ribuan
    print('  $namaMakanan : Rp ${_formatRupiah(harga)}');
  });

  // --- Mencetak Daftar Minuman dari Map ---
  print('\n--- Daftar Minuman ---');
  // Iterasi setiap pasangan key-value di dalam Map daftarMinuman
  daftarMinuman.forEach((namaMinuman, harga) {
    print('  $namaMinuman : Rp ${_formatRupiah(harga)}');
  });

  print('========================================');
}

// --- Fungsi Pembantu: Format angka ke format Rupiah (titik ribuan) ---
String _formatRupiah(int angka) {
  // Mengonversi angka ke String lalu membaliknya untuk memudahkan penyisipan titik
  String angkaStr = angka.toString();
  String hasil = '';
  int hitungDigit = 0;

  // Iterasi dari digit terakhir ke digit pertama
  for (int i = angkaStr.length - 1; i >= 0; i--) {
    hitungDigit++;
    hasil = angkaStr[i] + hasil; // Sisipkan digit di depan hasil

    // Setiap 3 digit (kecuali di posisi paling depan), tambahkan titik pemisah
    if (hitungDigit % 3 == 0 && i != 0) {
      hasil = '.$hasil';
    }
  }
  return hasil;
}
