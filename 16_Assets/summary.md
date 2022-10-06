# (16) Assets
## Data Diri
Nomor Urut : 1_009FLB_38 <br>
Nama : Farischa Makay

## Summary
Pada section 16 ini, pembahasan mengenai penggunaan Assets.

### Assets
Assets adalah file yang di bundled dan di deployed bersamaan dengan aplikasi. Tipe-tipe assets yaitu data (json files), icons, images, dan font file(ttf). Dalam menentukan assets Flutter menggunakan ```pubspec.yaml```. pubspec.yaml terletak pada root project, untuk mengidentifikasi assets yang dibutuhkan aplikasi. Menggunakan karakter ```/``` untuk memasukkan semua dalam satu directory name.

### Image
Image atau gambar akan membuat tampilan aplikasi menjadi lebih menarik. Flutter mendukung format gambar seperti JPEG, WebP, GIF, Animated Web/GIF, PNG, BMP, dan WBMP. Kita dapat menampilkan gambar dari project asset dan internet menggunakan widget image. Membutuhkan properti image dengan nilai class ```AssetImage()```. Untuk menampilkan gambar kita dapat menggunakan method ```Image.asset``` mendapatkan image yang sudah ditambahkan dalam project dan juga kita dapat menggunakan method Image.network untuk mendapatkan data image melalui internet dengan menggunakan string urlnya.

### Font
Penggunaan font dengan style tertentu akan menjadi keunikan pada aplikasi, penentuan font yang mau dipakai biasanya oleh UI designer dan untuk penerapan font menggunakan custom font dari package. Untuk penggunaan custom font dapat mengikuti beberapa step berikut : <br>
- Mencari dan mendownload font. Contoh dari https://fonts.google.com
- Import file .ttf dan daftarkan font pada pubspec.yaml
- Untuk mengatur font secara keseluruhan kita bisa mengatur pada theme MaterialApp namun jika kita ingin menggunakan font secara spesifik kita bisa menambahkan nama font pada TextStyle widget.
Cara penggunaan font dari package :
- Tambahkan package google_fonts di dependencies
- Import package di file dart
- Menggunakan font dengan memanggil GoogleFonts.namafont()
