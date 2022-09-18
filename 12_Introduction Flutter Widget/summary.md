# (10) Introduction Flutter Widget 
## Data Diri 
Nomor Urut : 1_009FLB_38 <br>
Nama : Farischa Makay <br>

## Summary
Flutter merupakan tools pengembangan antarmuka pengguna yang digunakan untuk membuat aplikasi mobile, desktop, dan web. Keunggulan yang dimiliki Flutter antara lain : 
- Mudah digunakan dan dipelajari
- Produktivitas yang tinggi
- Dokumentasi yang lengkap
- Komunitas yang berkembang
<p> Bagian dari Flutter, flutter terdiri dari Software Development Kit (SDK) yang merupakan alat-alat untuk membantu proses pengembangan aplikasi. Dan didalam SDK itu juga sudah termasuk framework. Framework adalah perlengkapan untuk membentuk aplikasi yang dapat dikustomisasi. Framework flutter dapat digunakan untuk membuat aplikasi yang canggih, native compiled dan multi-platform hanya dengan single code based. <br>
<p> Membuat project pada flutter dapat dilakukan dengan memberi perintah : <strong>flutter create < nama_project > </strong> dan untuk menjalankan project kita bisa menjalankan perintah <strong>flutter run </strong> </p> 
<p> Struktur direktori platform flutter antara lain : android, ios, web. Direktori project antara lain : lib (ruang kerja utama) dan test (aktivitas pengujian).</p>

<p> File utama pada flutter yaitu <b>main.dart</b>. Dalam file main terdapat fungsi main dan di dalam fungsi main terdapat fungsi runApp yang bertugas untuk memberitahukan flutter yang mana widget dari sebuah aplikasi.</p>

### Perkenalan Widget
Sebagian bersar dari aplikasi flutter terdiri dari widget-widget. Widget yang berfungsi untuk membentuk antarmuka (UI) aplikasi. Widget merupakan blueprint atau class dan dapat terdiri dari beberapa widget lainnya. Widget memiliki 2 jenis yaitu stateless dan stateful.
### Stateless Widget
Stateless widget tidak bergantung pada perubahan data, dimana stateless widget tidak memiliki internal state dan hanya sekali saja di built. Stateless widget hanya fokus pada tampilan yang tidak memiliki perubahan dan dibuat dengan extends pada class StatelessWidget.
### Stateful Widget
Stateful widget mementingkan pada perubahan data dimana ketika ingin ada bagian dari widget kita yang berubah secara dynamic. Stateful widget dibuat dengan extends class dari StatefulWidget. Satu widget menggunakan 2 class yaitu widget dan state.
### Built in Widget 
Built in widget ialah widget yang dapat langsung digunakan dan sudah terinstall bersama Flutter atau bawaan flutter itu sendiri. Contohnya seperti MaterialApp (membangun aplikasi android dengan desain material), Scaffold (membentuk sebuah halaman), AppBar (membentuk application bar yang terletak pada bagian atas halaman), Text (Menampilkan teks) dan lain-lain.