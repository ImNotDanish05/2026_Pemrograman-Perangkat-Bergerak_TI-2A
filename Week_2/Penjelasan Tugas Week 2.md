# **📝 Penjelasan Praktikum Week 2: Fundamental Dart**

Dokumen ini berisi penjelasan mengenai logika dan alur program dari masing-masing file latihan dan *challenge* pada pertemuan Week 2\.

## **1\. Latihan 1: Variabel, Tipe Data & Map (latihan\_1.dart)**

Program ini mendemonstrasikan cara menyimpan dan menampilkan data menggunakan berbagai tipe data dasar di Dart.

* **Tipe Data Dasar:** Menggunakan String untuk teks (nama, pemilik, alamat), int untuk bilangan bulat (tahun didirikan), dan bool untuk status buka/tutup.  
* **Ternary untuk Boolean:** Status buka dicetak menggunakan *inline ternary operator* ${statusBuka ? "Buka" : "Tutup"}. Jika true maka mencetak "Buka", jika false mencetak "Tutup".  
* **Collection (Map):** Daftar makanan dan minuman disimpan menggunakan Map\<String, int\>. *Key* (kunci) berupa String untuk nama menu, dan *Value* (nilai) berupa int untuk harga.  
* **Iterasi Map:** Menggunakan metode .forEach((key, value) { ... }) untuk membaca dan mencetak seluruh isi menu secara dinamis tanpa harus mengetiknya satu per satu.  
* **Format Rupiah:** Terdapat fungsi tambahan/kustomisasi untuk menyisipkan titik ribuan pada angka harga agar lebih enak dibaca sesuai standar mata uang Indonesia.

## **2\. Latihan 2: Operasi Aritmatika (latihan\_2.dart)**

Program ini fokus pada penggunaan operator matematika dasar (+, \-, \*, /) di Dart.

* **Kasus 1 (Lingkaran):** Menggunakan tipe data double karena hasil perhitungan melibatkan nilai desimal (phi \= 3.14). Rumus dieksekusi menggunakan operator kali \*.  
* **Kasus 2 (Kasir Sepatu):** Menghitung nilai diskon dengan cara (persentase / 100\) \* hargaAwal. Kemudian menggunakan operator kurang \- untuk mendapatkan total harga setelah diskon.  
* **Kasus 3 (Konversi Suhu):** Menerapkan rumus konversi suhu standar. Perlu diperhatikan penggunaan tanda kurung () untuk mengatur prioritas perhitungan (mana yang harus dihitung lebih dulu), contohnya (9 / 5 \* celsius) \+ 32\.

## **3\. Challenge 3: Decision Making (challenge\_3.dart)**

Program ini menunjukkan bagaimana komputer mengambil keputusan berdasarkan kondisi tertentu menggunakan tiga metode berbeda.

* **If-Else:** Sangat cocok digunakan untuk mengecek kondisi yang berupa **rentang nilai** (range), contohnya nilai \>= 81 && nilai \<= 90\. Operator && (AND) memastikan kedua kondisi harus terpenuhi.  
* **Ternary Operator:** Versi ringkas dari If-Else. Formatnya adalah kondisi ? eksekusi\_jika\_benar : eksekusi\_jika\_salah. Jika kondisinya banyak (bersarang/nested), operator ini dirangkai ke bawah agar tetap terbaca.  
* **Switch-Case:** Sangat cocok dan efisien digunakan untuk mengecek nilai yang **spesifik dan pasti** (bukan rentang), contohnya case 'A':, case 'B':. Jangan lupa menggunakan break; agar program berhenti mengecek *case* selanjutnya jika kecocokan sudah ditemukan.

## **4\. Challenge 4: Looping / Perulangan (challenge\_4.dart)**

Program ini menguji pemahaman tentang perulangan bersarang (*nested loop*) untuk mencetak karakter.

* **Logika Dasar:** Terdapat dua buah loop for. Loop luar (outer) mengatur jumlah **baris**, sedangkan loop dalam (inner) mengatur **kolom** atau jumlah bintang yang dicetak pada baris tersebut.  
* **Pola Ascending (Naik):** Loop luar berjalan maju (i++) dari 1 hingga n. Loop dalam akan mencetak bintang sebanyak nilai i.  
* **Pola Descending (Turun):** Loop luar berjalan mundur (i--) dimulai dari n hingga 1\. Artinya, baris pertama langsung mencetak 5 bintang, lalu baris berikutnya berkurang menjadi 4, 3, dan seterusnya.  
* **Variabel Penampung:** Menggunakan variabel bertipe String yang kosong "", lalu karakter bintang ditambahkan berulang kali menggunakan operator \+= sebelum akhirnya dicetak menggunakan print().

*Dibuat untuk keperluan dokumentasi Pemrograman Perangkat Bergerak TI-2A.*