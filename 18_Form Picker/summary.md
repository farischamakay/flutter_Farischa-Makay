# (18) Form Picker
## Data Diri
Nomor Urut : 1_009FLB_38 <br>
Nama : Farischa Makay

## Summary
Pada section kali ini, saya belajar mengenai Date Picker, Color Picker dan File Picker.

Form Picker sangat penting dalam interaksi antara aplikasi dan user. Kegunaannya untuk mengumpulkan input dan feedback dari user.

### Date Picker.
Widget ini berguna untuk user bisa menginput tanggal seperti tanggal kelahiran, waktu pemesanan tiket, waktu reservasi, restoran, jadwal meeting dan lain-lain. Cara membuat Date :
- Menggunakan fungsi bawaan flutter ```showDatePicker```. Fungsi ini memiliki tipe data future dan menampilkan dialog material design date picker
- Menambahkan packages inti di ```pubspec.yaml``` 
- Mempersiapkan variabel dan membangun UI
- Menambahkan fungsi showDatePicker dan memanggil fungsi sesState di dalam onPressed

### Color Picker
Widget ini berfungsi untuk user bisa memilih color. Penggunaan color picker bisa digunakan untuk berbagai macam kondisi. Cara membuat color picker yaitu :
- Menggunakan packages flutter_collorpicker, menambahkan packages flutter_colorpicker di pubspec.yaml 
- Mempersiapkan varial dan membangun UI
- Menambahkan fungsi showDialog di dalam onPressed dengan return widget AlertDialog
- Mengimport packages flutter_colorpicker dalam file dart
- Membuat kode untuk menggunakan packages flutter_colorpicker.
Packages ```flutter_colorpicker``` memiliki custom widget yang dapat digunakan seperti BlockPicker, ColorPicker, dan SlidePicker.

### File Picker
Widget ini digunakan untuk mengakses storage. User dapat memilih dan membuka file. Cara membuat file picker : 
- Menggunakan packages ```file_picker``` dan ```open_file```
- Menambahkan packages ```file_picker``` dan ```open_file``` di ```pubspec.yaml``` 
- Mengimport packages file_picker dan open_file dalam file dart
- Membangun UI
- Membuat fungsi untuk mengexplore dan memilih files dari storage
- Memanggil fungsi _ pickFile di dalam onPressed
- Membuat fungsi untuk membuka files yang telah dipilih
- Mengambil file dari object result dan memanggil fungsi _openFile di dalam fungsi _pickFile




