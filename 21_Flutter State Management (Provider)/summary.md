# (21) Flutter State Management (Provider)
## Data Diri
Nomor Urut : 1_009FLB_38 <br>
Nama : Farischa Makay

## Summary
Pada section kali ini, saya belajar mengenai  Flutter State Management.

### State
State merupakan data yang dapat dibaca saat pembuatan widget. Data dapat berubah saat widget sedang aktif. State hanya dimiliki oleh <bold>StatefulWidget</bold>. Kita memanfaatkan state ketika kita ingin membuat widget perubahan. Kita bisa menyimpan nilainya dalam sebuah property, kemudian jika terjadi perubahan state bisa digunakan oleh widget saat dibuild ulang. Apabila kita ingin mengubah state kita dapat menggunakan method <bold>setState</bold>.

### Global State
State global ialah state yang dapat digunakan pada seluruh widget. Global state dibutuhkan agar antara widget memanfaatkan state yang sama dengan mudah contohnya fitur keranjang pada ecommerce dimana kita membutuhkan state dari card tidak hanya pada satu widget saja tetapi juga dapat diakses widget lain seperti deskripsi folder dan halaman pembayaran. Kita bisa menggunakan provider untuk pendekatan state management yang lebih kompleks dan provider sendiri perlu kita install terlebih dahulu agar dapat digunakan. Kita menginstalnya dengan cara menambahkan package provider pda bagian dependencies dalam file pubspec.yaml kemudian mencajalankan perintah ```flutter pub get``` pada terminal.Kita dapat mendaftarkan provider pada ```runApp``` dengan ```MultiProvider``` pada project kemudian simpan provider dalam variabel dan ambil data dari provider melalui getter.

