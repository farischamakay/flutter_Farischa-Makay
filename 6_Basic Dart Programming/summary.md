# (06) Basic Dart Programming
## Data Diri
Nomor Urut : 1_009FLB_38 <br>
Nama : Farischa Makay <br>
## Summary
Pada section 06 ini saya belajar mengenai Basic Dart Programming. Beberapa points kesimpulan yang saya dapat ambil dari materi yang telah dipaparkan :
### Function (Lanjutan)
1. Anonymous Function. untuk membuat function, kita membuat nama terhadap sebuah function tersebut namun kita juga dapat mendeklarasikan function tanpa nama (Anonymous Function), anonymous function bisa dibuat sebagai data pada parameter contoh sebagai berikut :
![PenjelasanAnonymousFunction](/screenshots/contoh01_anonymous_function.jpg)
2. Arrow Function. Arrow Function bisa memiliki nama atau tidak, berisi satu data(dari proses maupun data statis) dan nilai return fungsi diambil dari data tersebut. Sebagai contoh sebagai berikut :
![ArrowFunction](/screenshots/contoh01_arrow_function.jpg)
Fungsi hello melakukan print di dalamnya, fungsi jumlah memberi nilai saat dijalankan sehingga dapat dilakukan print.
### Async - Await
Dengan menggunakan Async - Await kita dapat menjalankan beberapa proses tanpa perlu menunggu, proses ditulis dalam  bentuk fungsi. Function dengan keyword Await akan menunggu hingga proses async selesai. Untuk lebih memahami berikut simulasi proses asynchronous :
![ProsesAsynchronous](/screenshots/contoh02_simulasi_asyncronous.jpg)
Pada simulasi kita memiliki 2 fungsi untuk menampilkan teks yakni fungsi P1 dan P2. Pada fungsi P1 memiliki objek Future, dimana objek future akan menunda eksekusi fungsi P1, contoh kasus penundaan selama 1 detik. Dikarenakan fungsi P1 ditunda maka fungsi P2 yang akan dieksekusi terlebih dahulu kemudian setelah 1 detik P1. Proses dan code sebagai berikut :
![HasiltanpaAwait](/screenshots/contoh02_tanpaawait.jpg)

Agar kita dapat menjalankan proses layaknya synchronous kita menggunakan Async - Await. 
![HasilProsesAsync](/screenshots/contoh02_kode.jpg)
Dengan menerapkan code diatas kita akan mendapat hasil p1 yang akan tereksekusi dahulu dikarenakan kita menggunakan await dimana await akan membuat P1 tereksekusi dahulu kemudian P2.

### Tipe Data Future
Dengan menggunakan Future kita dapat membuat proses berjalan dengan memberi durasi pada fungsi. Jika kita ingin mengembalikan nilai return pada object future, kita memerlukan keyword async untuk menjalankan proses programnya karena future sendiri berjalan secara asynchronous. Berikut contoh penggunaan Future dan output dari penggunaan future : 
![HasilFuture](/screenshots/Contoh03_Penggunaan_Future.jpg)

### Collection
Collection adalah struktur data yang lebih canggih untuk menangani masalah yang lebih kompleks. Collection dapat menyimpan kumpulan data pada suatu tempat. Contoh collection yaitu List dan Map.
- List, list menyimpan data secara berbaris dan setiap data di dalamnya memiliki index. Cara memblist dengan menambah data pada kurung siku ```[]```. Contoh :
![HasilList](/screenshots/contoh04_List.jpg)

- Map, jenis collection map menyimpan data secara key - value. Key berguna selayaknya index pada list. Contoh pembuatan Map sebagai berikut :
![HasilMap](/screenshots/contoh05_Map.jpg)
