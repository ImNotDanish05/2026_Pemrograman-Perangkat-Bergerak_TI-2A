// ============================================================
// Latihan 2: Operasi Aritmatika & Logika
// Topik   : Menyelesaikan 3 kasus perhitungan:
//           1. Luas & Keliling Lingkaran
//           2. Kasir Sepatu (dengan Diskon)
//           3. Konversi Suhu (Celsius ke Reamur & Fahrenheit)
// ============================================================

void main() {
  // ============================================================
  // KASUS 1: Geometri - Luas & Keliling Lingkaran
  // ============================================================
  print('===== KASUS 1: Luas & Keliling Lingkaran =====');

  const double pi = 3.14159265358979; // Konstanta Pi
  double jariJari = 7.0; // Jari-jari lingkaran dalam satuan cm

  // Rumus Luas Lingkaran: π × r²
  double luasLingkaran = pi * jariJari * jariJari;

  // Rumus Keliling Lingkaran: 2 × π × r
  double kelilingLingkaran = 2 * pi * jariJari;

  print('Jari-jari    : $jariJari cm');
  // toStringAsFixed(2) untuk membulatkan desimal menjadi 2 angka di belakang koma
  print('Luas         : ${luasLingkaran.toStringAsFixed(2)} cm²');
  print('Keliling     : ${kelilingLingkaran.toStringAsFixed(2)} cm');

  // ============================================================
  // KASUS 2: Kasir Sederhana - Harga Sepatu Setelah Diskon
  // ============================================================
  print('\n===== KASUS 2: Kasir Sepatu =====');

  int hargaSepatu = 750000; // Harga awal sepatu dalam Rupiah
  double persenDiskon = 10.0; // Diskon dalam persentase (%)

  // Menghitung nilai diskon dalam Rupiah: (persentase / 100) × harga
  double nilaiDiskon = (persenDiskon / 100) * hargaSepatu;

  // Menghitung total harga setelah dikurangi diskon
  double totalHarga = hargaSepatu - nilaiDiskon;

  // Mencetak output sesuai format yang diminta di soal
  print('Harga Sepatu : Rp ${_formatRupiah(hargaSepatu)}');
  print('Diskon       : ${persenDiskon.toInt()}%');
  print('Diskon (Rp)  : Rp ${_formatRupiah(nilaiDiskon.toInt())}');
  print('Total Harga  : Rp ${_formatRupiah(totalHarga.toInt())}');

  // ============================================================
  // KASUS 3: Konversi Suhu - Celsius ke Reamur & Fahrenheit
  // ============================================================
  print('\n===== KASUS 3: Konversi Suhu =====');

  double suhuCelsius = 36.6; // Suhu dalam derajat Celsius

  // Rumus konversi Celsius ke Reamur: °R = °C × (4/5)
  double suhuReamur = suhuCelsius * (4 / 5);

  // Rumus konversi Celsius ke Fahrenheit: °F = (°C × 9/5) + 32
  double suhuFahrenheit = (suhuCelsius * 9 / 5) + 32;

  print('Suhu Celsius    : ${suhuCelsius}°C');
  print('Suhu Reamur     : ${suhuReamur.toStringAsFixed(2)}°R');
  print('Suhu Fahrenheit : ${suhuFahrenheit.toStringAsFixed(2)}°F');
}

// --- Fungsi Pembantu: Format angka ke format Rupiah (titik ribuan) ---
String _formatRupiah(int angka) {
  String angkaStr = angka.toString();
  String hasil = '';
  int hitungDigit = 0;

  for (int i = angkaStr.length - 1; i >= 0; i--) {
    hitungDigit++;
    hasil = angkaStr[i] + hasil;

    // Setiap 3 digit, sisipkan titik sebagai pemisah ribuan
    if (hitungDigit % 3 == 0 && i != 0) {
      hasil = '.$hasil';
    }
  }
  return hasil;
}
