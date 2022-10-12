# (24) Introduction REST API - JSON serialization/desentralization
## Data Diri
Nomor Urut : 1_009FLB_38 <br>
Nama : Farischa Makay

## Summary
Pada section kali ini, saya belajar mengenai REST API - JSON serialization/desentralization

### REST API
REST API merupakan singkatan dari Representational State Transfer Application Programming Interface. REST API merupakan jembatan antara server dan client. Arsitektural yang memisahkan tampilan dengan proses bisnis dan bagian tampilan dengan proses bisnis berkirim data melalui HTTP request. Simulasinya dapat digambarkan sebagai berikut :<br>
![]

### HTTP
HTTP merupakan protokol yang digunakan untuk berkirim data pada internet, biasanya data tersebut berbentuk media web. Pola komunikasi bisa disimulasikan sebagai berikut : <br>
![]<BR>
Client mengirim request kemudian Server mengolah dan membalas dengan memberi response.
Struktur Request :
- URL. URL merupakan alamat halaman yang akan diakses.
- Method(GET,POST, PUT, DELETE). Yang merupakan aksi yang diinginkan.
- Header. Informasi tambahan terkait request yang dikirimkan.
- Body. Data yang disertakan bersama request.
Struktur Response :
- Status code. Kode yang memiliki keseluruhan response, baik sukses maupun gagal.
- Header. Informasi tambahan terkait response yang diberikan
- Body. Data yang disertakan bersama response.
### Dio
Dio adalah package yang tersedia pada pub.dev yang merupakan HTTP Client yang dimanfaatkan untuk melakukan REST API.
### Serialisasi JSON
JSON merupakan singkatan dari Javacript Object Notation yang umumnya digunakan pada REST API. Cara penulisan data pada JSON biasanya dalam bentuk Key dan Value. Serealisasi JSON yaitu mengubah struktur data ke bentuk JSON. Kita dapat melakukan serealisasi JSON menggunakan fungsi jsonEncode dari package dart : convert. Sedangkan desentralisai JSON mengubah bentuk JSON ke struktur data dengan menggunakan fungsi jsonEncode dari package dart:convert.