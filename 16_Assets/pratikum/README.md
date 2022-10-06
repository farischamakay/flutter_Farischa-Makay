# (16) Assets
## Data Diri
Nomor Urut : 1_009FLB_38 <br>
Nama : Farischa Makay

## Task
Pada task section kali ini mengenai implementasi assets pada aplikasi. Berikut demo hasil project apabila dijalankan :
![Demo_assignment_assets](https://media.giphy.com/media/3j3OUVABTRtTVbXFnA/giphy.gif) <br>

Pada task pertama yaitu perintah untuk menampilkan gambar menggunakan GridView dengan menampilkan minimal 3 gambar dari internet : <br>
![Gridview_Code](screenshots/gridview.jpg) <br>
Saya mengambil data gambar flowers dari ```https://icons8.com```, kemudian saya menyimpan link data gambar pada array contoh code sebagai berikut : <br>
![Mengambil_Data_Dari_Internet](screenshots/data.jpg)<br>

Kemudian saya load image menggunakan method ```CachedNetworkImage(imageUrl)```. Gambar - gambar akan tampil pada layar dan ketika di klik gambar akan muncul secara fullscreen. Saya menggunakan ```OnTap : () {Navigator.push}``` untuk mengarahkan ke halaman yang baru yaitu ```DetailScreen``` page. Dimana saya menggunakan ```Navigator.pop(context)``` untuk menampilkan ke layar secara fullscreen apabila telah terbuka halaman baru. Berikut code yang saya terapkan :

![Navigator_Push](screenshots/navigation.jpg) <br>
![Navigator_Pop](screenshots/openfullscreen.jpg)



