# (28) Unit Testings
## Data Diri
Nomor Urut : 1_009FLB_38 <br>
Nama : Farischa Makay

## Summary
### UI Testing
UI Testing merupakan pengujian yang dilakukan pada tampilan suatu aplikasi untuk memastikan aplikasi dapat menerima interaksi dan memberi respon kepada pengguna. UI testing pada flutter disebut juga widget testing sehinga pengujian dilakukan pada widgets dengan menuliskan script yang dapat dijalankan secara otomatis. Keuntungan UI Testing yaitu untuk memastikan seluruh widget memberi tampilan yang sesuai, memastikan seluruh interaksi dapat diterima dengan baik, dan menjadi ketentuan yang harus diikuti saat diperlukan perubahan pada widget.

### Melakukan Testing
Pertama yaitu <b>Instalasi Package Testing</b>. Pada umumnya, package testing sudah terinstall sejak project pertama kali dibuat. Tetapi, kita bisa mengistal secara manual dengan cara menambahkan ```flutter_test``` pada ```dev_dependencies``` kemudian menjalankan ```flutter pub get``` pada terminal.

### Penulisan Script Testing
Kita melakukan testing pada folder ```test``` dengan nama harus diikuti ```_test.dart```. Tiap file berisi fungsi main() yang didalamnya dapat dituliskan script testing. Tiap skenario disebut sebagai test case. Test case diawali dengan ```testWidgets``` dan diberi judul.
