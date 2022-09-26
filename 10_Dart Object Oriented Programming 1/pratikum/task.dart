import 'dart:io';

class Hewan{
  String? nama;
  double berat = 0;

  Hewan(String nama, double berat){
    this.nama = nama;
    this.berat = berat;
  }
}

class Mobil{
  double kapasitas = 1000;
  double muatanMobil = 0;
  double sisaMuatan = 0;
  List<Hewan> muatanHewan = [];

  dynamic totalMuatan(){
    for(var i = 0; i < muatanHewan.length; i++){
      print('Muatan ${i+1} adalah \t : ${muatanHewan[i].nama}');
      print('Berat muatan ${i+1} adalah \t : ${muatanHewan[i].berat}');

      muatanMobil += muatanHewan[i].berat;
    }
    sisaMuatan = kapasitas - muatanMobil;
    print('Muatan mobil saat ini : $muatanMobil Kg');
    print('Sisa Muatan yang bisa diangkut oleh mobil : $sisaMuatan Kg');
  }
  
  dynamic tambahMuatan(Hewan muatanBaru){
    if (sisaMuatan >= muatanBaru.berat) {
      muatanHewan.add(muatanBaru);
      print('Muatan tambahan berhasil, muatan saat n=ini : ');
      muatanMobil = 0;
      totalMuatan();
    }
    else {
      print('Saat ini muatan full, tidak dapat menambah muatan.');
    }
  }
}

void main(List<String> args) {
  var h1 = Hewan('Kucing',30);
  var h2 = Hewan('Anjing', 100);
  var mobil1 = Mobil();

  mobil1.muatanHewan.add(h1);
  mobil1.muatanHewan.add(h2);
  mobil1.totalMuatan();
  stdout.write('Masukkan nama Hewan yang ingin anda tambahkan : ');
  String nama = stdin.readLineSync()!;

  stdout.write('Masukkan berat Hewan : ');
  double berat = double.parse(stdin.readLineSync()!);

  var h3 = Hewan(nama, berat);
  mobil1.tambahMuatan(h3);

}