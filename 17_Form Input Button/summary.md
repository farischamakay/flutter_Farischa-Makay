# (17) Form Input Button
## Data Diri
Nomor Urut : 1_009FLB_38 <br>
Nama : Farischa Makay

## Summary
Pada section 16 ini, pembahasan mengenai penggunaan Form input button.

### Form
Form digunakan untuk menerima isian data dari pengguna dan Isian data dapat bisa lebih dari satu. Dalam membuat form kita dapat menggunakan StatefulWidget. Untuk setiap keadaan form disimpan menggunakan ```GLobalKey<FormState>```

### Input
Ada beberapa input widget yang bisa digunakan pada flutter seperti TextField, Radio, Checkbox dan Dropdown Button.

- Textfield. Widget TextField dapat menerima isian data dari pengguna. Isian data dapat lebih dari satu. Isian data berupa teks, dalam pembuatan TextField, data diambil menggunakan TextEditingController. 
- Radio. Widget Radio memberi opsi pada pengguna namun pengguna hanya dapat memilih satu opsi. Dalam pembuatan Radio, data diambil menggunakan property dengan tipe data sesuai value pada radio.
- Checkbox. Widget checkbox juga memberi opsi pada penggunam dan pengguna dapat memilih beberapa opsi. Dalam pembuatan checkbox data diambil menggunakan property bertipe boolean.
- Dropdown Button. Widget dropdown button memberi posi pada pengguna namun hanya dapat memilih satu opsi dan opsi tidak ditampilkan diawal, opsi tampil apabila tombol ditekan. Dalam pembuatan dropdown button data diambil menggunakan property dengan tipe data sesuai value pada dropdownmenuitem.

### Button
Widget Button bersifat seperti tombol yang dapat melakukan sesuatu apabila ditekan. Ada beberapa button widget yang dapat digunakan seperti Elevated Button,

- Elevated Button. Widget Elevated Button ialah tombol yang timbul dan apabila ditekan akan menjalankan onPressed.
- Icon Button. Widget Icon Button ialah tombol yang hanya menampilkan icon dan apabila ditekan akan menjalankan onPressed.