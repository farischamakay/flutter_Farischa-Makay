import 'dart:ffi';

class BangunRuang{
  double panjang = 0;
  double lebar = 0;
  double tinggi = 0;


  void volume(){
    print('Volume dari bangun ruang adalah ');
  }
}

class Kubus extends BangunRuang {
  double sisi;
  Kubus(this.sisi);

  @override 
  void volume(){
    var hasil = sisi * sisi * sisi;
    print('Volume dari bangun ruang Kubus adalah ${hasil}');
  }

}

class Balok extends BangunRuang {
  Balok(){
    this.panjang = 3;
    this.lebar = 4;
    this.tinggi = 5;
  }
  @override
  void volume() {
    var hasil = panjang * lebar * tinggi;
    print('Volume dari bangun ruang Balok adalah ${hasil}');
  }
}

void main(List<String> args) {
  // var kubus = Kubus(0,0,0,3);
  // kubus.volume();

  // var balok = Balok(3, 4, 5);
  // balok.volume();

  List<BangunRuang> data = [];
  data.add(Kubus(3));
  data.add(Balok());

  print('Hasil volume Bangun Ruang adalah ');
  for (var bangun in data) {
    bangun.volume();
  }
}
