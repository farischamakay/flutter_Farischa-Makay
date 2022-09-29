import 'dart:async';

class Matematika {
  hasil() {
      print('Hasil x dan y adalah ');
  }

}

class FaktorPersekutuanTerbesar implements Matematika {
  var x;
  var y;
  FaktorPersekutuanTerbesar () {
    x = 48;
    y = 36;
  }
  @override
  hasil() {
    var hasil = x - y;
    while(x % hasil != 0){
      hasil = x % y;
      
    }
    return hasil;
  }
}

class KelipatanPersekutuanTerkecil implements Matematika {
  var x;
  var y;
  KelipatanPersekutuanTerkecil () {
    x = 36;
    y = 48;  
  }
  @override
  hasil() {
    var hasil = x;
    while(hasil %y != 0 ){
      hasil = hasil + x;

      
    }
    return hasil;
  }
}

void main(List<String> args) {
  var operation1 = FaktorPersekutuanTerbesar();
  var operation2 = KelipatanPersekutuanTerkecil();
  print('Hasil FPB : ${operation1.hasil()}');
  print('Hasih KPK : ${operation2.hasil()}');
}

