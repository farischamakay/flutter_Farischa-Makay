import 'dart:ffi';

import 'task12.dart';

abstract class BangunRuang{
  double panjang;
  double lebar;
  double tinggi;

  BangunRuang(this.panjang,this.lebar, this.tinggi);

  void volume(){
    print('Bangun ruang memiliki volume');
  }


}

class Kubus extends BangunRuang {
  double sisi;
  Kubus(super.panjang,super.lebar,super.tinggi,this.sisi);

  @override 
  void volume(){
    var hasil = sisi * sisi * sisi;
    print('Volume dari bangun ruang Kubus adalah ${hasil}');
  }

}

class Balok extends BangunRuang {
  Balok(super.panjang,super.lebar,super.tinggi);
  
  @override
  void volume() {
    var hasil = panjang * lebar * tinggi;
    print('Volume dari bangun ruang Balok adalah ${hasil}');
  }
}

void main(List<String> args) {
  var kubus = Kubus(0,0,0,3);
  kubus.volume();

  var balok = Balok(3, 4, 5);
  balok.volume();
}