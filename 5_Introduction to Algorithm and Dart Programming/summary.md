# (05) Introduction to Algorithm and Dart Programming
## Data Diri
Nomor Urut : 1_009FLB_38 <br>
Nama : Farischa Makay <br>
## Summary
Pada section 05 ini saya belajar mengenai Introduction to Algorthm and Dart Programming. Beberapa points kesimpulan yang saya dapat ambil dari materi yang telah dipaparkan :
### Dart dan fitur-fitur Dart
Dart adalah bahasa pemrograman dikembangkan oleh google sejak tahun 2007 dipimpin oleh Lars Bak dan Kasper Lund yang berfokus untuk optimalisasi sisi client(frontend), seperti Web, Desktop, Mobile. <br>
Fitur yang dimiliki Dart : <br>
- Type safe, menjamin konsistensi tipe data <br>
- Null safety, memberi keamanan dari data bernilai hampa (null) <br>
- Rich standard library, hadir dengan banyak dukungan library internal <br>
- Multiplatfom, mampu berjalan pada berbagai jenis perangkat <br>
### Dasar Pemrograman Dart
1. Fungsi Main. Fungsi main ialah top label function, bagian yang dijalankan pertama kali pada program Dart. Fungsi main dapat memiliki tipe void (fungsi tidak mengembalikan nilai) atau int.

2. Komentar, Komentar ialah baris kode yang tidak dijalankan dengan tujuan memberi catatan pada code dan mencegah perintah dijalankan. <br>
Cara menggunakan komentar :
- Penggunaan tanda garis miring 2 kali pada single command line. Berikut contoh penggunaan syntax komentar untuk single line command :
[contohKomentar01](/screenshots/contoh01_penggunaan_komentar_single_line.jpg) 
- Menggunaan tanda garis miring dan bintang /* pada awal kalimat dan diakhiri dnegan tandang bintang dan garis miring */ . Berikut contoh penggunaan syntax komentar tanda garis miring dan bintang :
[contohKomentar02](/screenshots/contoh01_penggunaan_komentar_bintang.jpg)

4. Variabel, variabel digunakan untuk menyimpan data. Tiap variabel memiliki nama yang dapat dipanggil dan digunakan, tiap variabel juga memiliki tipe data.
Contoh pembuatan variabel :
- Menggunakan var dan diikuti nama variabel secara otomatis tipe data variabel tersebut adalah Null. Contoh : 
[ContohVariabelNull](/screenshots/contoh02_variabel_null.jpg)
- Menggunakan tanda sama dengan untuk memberi nilai pada Variabel.
[ContohVariabelNilai](/screenshots/contoh02_variabel_nilai.jpg)

5. Konstanta, konstanta digunakan untuk menyimpan data namun data yang telah diinialisasikan bersifat tetap dan tidak dapat diubah.
Kita juga secara explicit menentukan tipe data dan memberi nama.
Untuk membuat konstanta kita dapat menggunakan final, diikuti nama, dan diberikan nilai secara langsung. Contoh konstanta apabila mencoba melakukan perubahan :
[contohKonstanta](/screenshots/contoh03_penggunaan_final.jpg)
Terjadi error disebabkan nilai final tidak dapat diubah, penggunaan konstanta yang benar sebagai berikut :
[ContohKonstantaSesuai](/screenshots/contoh03_penggunaan_final_sesuai.jpg)

5. Tipe Data, dalam bahasa Dart dikenal staticly type yang artinya saat mendeklarasikan  variabel kita perlu menentukan jenis-jenis data yang akan tersimpan pada suatu variabel. <br>
Dart memiliki primitive data type seperti init, double, bool dan string. <br>
- int, data harus bilangan bulat. <br>
- double, data harus bilangan pecahan. Penulisan pecahan menggunakan tanda titik. <br>
- bool, data harus true atau false. <br>
- string, data berupa teks. Penulisan teks diawali dan diakhiri tanda kutip. <br>
Contoh penggunaan tipe data :
[ContohPenggunaanTipeData](/screenshots/contoh04_penggunaan_tipe_data.jpg)

6. Operator, Dart operator memberikan instruksi kepada computer untuk melakukan operasi pengolahan data. Data yang dioperasi disebut Operand.