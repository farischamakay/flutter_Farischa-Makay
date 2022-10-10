# (20) Flutter Navigation 
## Data Diri
Nomor Urut : 1_009FLB_38 <br>
Nama : Farischa Makay

## Summary
Pada section kali ini, saya belajar mengenai Flutter Navigation.


### Flutter Navigation
Navigation berguna saat user ingin berpindah halaman satu ke halaman yang lain

### Navigation Dasar
Pada proses perpindahan halaman, kita dapat menuliskan perintah ```Navigator.push()``` untuk berpindah ke halaman selanjutnya. Dan untuk melakukan perpindahan kembali ke halaman sebelumnya kita bisa menggunakan ```Navigator.pop()```. 

### Navigation dengan Named Routes
Selain menggunakan Navigation dasar untuk melakukan perpindahan halaman, kita juga dapat melakukan routes dengan cara menambahkan initialRoute dan routes pada MaterialApp. Tiap route adalah fungsi yang membentuk halaman. Untuk melakukan perpindahan ke halaman selanjutnya menggunakan routes kita dapat menggunakan ```Navigator.pushNamed{}``` dan apabila kita ingin mengarahkan untuk kembali pada halaman sebelumnya kita dapat menambahkan ```Navigator.pop```. Ketika kita ingin mengirim data ke halaman baru kita dapat menggunakan arguments saat melakukan pushNamed.