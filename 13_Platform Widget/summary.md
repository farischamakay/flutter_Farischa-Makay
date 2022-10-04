# (13) Platfrom Widget
## Data Diri 
Nomor Urut : 1_009FLB_38 <br>
Nama : Farischa Makay <br>

## Summary
Pada flutter kita dapat memanfaatkan widget dengan gaya berbeda pada Android (MaterialApp) dan iOS(CupertinoApp).
### MaterialApp
MaterialApp adalah widget dasar yang mengemas seluruh widget dalam aplikasi yang digunakan pada sistem android yang diimport dari ```package:flutter/material.dart```. Struktur dari MaterialApp :
- theme untuk mengatur tema aplikasi.
- home untuk halaman utama aplikasi. Mengatur halaman juga dapat dilakukan dengan menggunakan routes dan initialRoute.
Scaffold ialah widget dasar untuk membangun sebuah halaman pada MaterialApp. Struktur Scaffold : 
- appBar untuk bar menu bagian atas halaman.
- drawer untuk menu bagian samping halaman.
- body untuk bagian utama halaman.
- bottomNavigationBar untuk menu bagian bawah halaman.

### CupertinoApp 
CupertinoApp adalah widget dasar yang mengemas seluruh widget dalam aplikasi yang digunakan pada sistem iOS yang diimport dari ```package:flutter/cupertino.dart```. Stuktur cupertino :
- theme. variabel ```_themeDark``` dibuat untuk menyimpan tema. Diperlukan karena Cupertino tidak menyediakan ThemeData.dark() seperti pada Material.
- home untuk halaman utama aplikasi.
CupertinoPageScaffold adalah widget dasar untuk membangun sebuah halaman pada CupertinoApp. Struktur dari CupertinoPageScaffold:
- navigationBar : CupertinoNavigationBar(...) untuk Bar bagian menu atas halaman.
- child sebagai bagian halaman utama.  

