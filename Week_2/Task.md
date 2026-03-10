# **Modul Latihan Praktikum Pemrograman Dart**

Dokumen ini berisi kumpulan soal latihan praktikum dan tantangan pemrograman menggunakan bahasa Dart, mulai dari dasar variabel hingga kontrol alur (looping dan decision making).

## **Latihan Praktikum 1: Variabel & Tipe Data**

### **Data Restoran**

| Kategori | Keterangan |
| :---- | :---- |
| **Nama** | Electra Seafood |
| **Tahun Didirikan** | 2023 |
| **Pemilik** | Mbok Yem |
| **Alamat** | JL. Prof. Soedarto, SH, Tembalang |
| **Status** | Buka |

**Daftar Menu:**

* **Makanan (Map):**  
  * Kepiting Rebus: 40rb  
  * Nasi Goreng: 20rb  
  * Udang Asam Manis: 50rb  
  * Sate Cumi: 30rb  
* **Minuman (Map):**  
  * Es Jeruk: 5rb  
  * Es Teh: 2rb  
  * Es Jus: 6rb

### **Tugas Soal:**

1. Tentukan variabel dengan tipe data yang tepat untuk menyimpan data restoran di atas.  
2. Isi variabel tersebut dengan data yang telah disediakan.  
3. Cetak seluruh data restoran tersebut menggunakan fungsi print().  
4. **Catatan:** Daftar makanan dan minuman wajib menggunakan tipe data Map.

## **Latihan Praktikum 2: Operasi Aritmatika & Logika**

Buatlah program Dart untuk menyelesaikan persoalan berikut:

1. **Geometri:** Menghitung Luas dan Keliling Lingkaran.  
2. **Kasir Sederhana:** Menghitung total harga sepatu setelah diskon.  
   * **Input:** Harga Sepatu (Rp 750.000), Diskon (10%).  
   * **Output yang diharapkan:**  
     Harga Sepatu : Rp 750.000  
     Diskon       : 10%  
     Diskon (Rp)  : Rp 75.000  
     Total Harga  : Rp 675.000

3. **Konversi Suhu:** Mengkonversi suhu dari Celsius ke Reamur dan Fahrenheit.

## **Challenge 3: Decision Making**

Selesaikan logika penilaian berikut di dalam fungsi void main():

### **1\. Sistem Penilaian Hasil Belajar (Skala 0 \- 100\)**

Tentukan predikat berdasarkan nilai dengan kriteria:

* 91 \- 100 : Sangat Baik  
* 81 \- 90 : Baik  
* 71 \- 80 : Cukup  
* 61 \- 70 : Kurang  
* 0 \- 60 : Sangat Kurang  
* Nilai \< 0 atau \> 100: Nilai Invalid

**Instruksi:** Kerjakan menggunakan dua metode: **If-Else** dan **Ternary Operator**.

### **2\. Sistem Penilaian Makanan (Skala A \- E)**

Tentukan deskripsi rasa berdasarkan grade:

* A : Sangat Enak  
* B : Enak  
* C : Cukup  
* D : Kurang  
* E : Belajar Dulu  
* Lainnya: Nilai Invalid

**Instruksi:** Kerjakan menggunakan metode **Switch Case**.

## **Challenge 4: Looping (Perulangan)**

Buatlah program menggunakan looping (perulangan) untuk menghasilkan pola bintang sebagai berikut:

### **1\. Pola Segitiga Siku (Ascending)**

Tampilkan pola bintang yang bertambah sesuai nilai n.

*Contoh n \= 5:*

\*  
\*\*  
\*\*\*  
\*\*\*\*  
\*\*\*\*\*

### **2\. Pola Segitiga Terbalik (Descending)**

Tampilkan pola bintang yang berkurang sesuai nilai n.

*Contoh n \= 5:*

\*\*\*\*\*  
\*\*\*\*  
\*\*\*  
\*\*  
\*  
