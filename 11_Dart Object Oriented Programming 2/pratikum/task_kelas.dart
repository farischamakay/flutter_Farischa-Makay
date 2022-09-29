import 'dart:ffi';

class Hewan {
  String? name;
  String? jenis;

  Hewan(this.name , this.jenis);

  void suara(){
    print('Menghasilkasn suara');
  }
}

class Kucing extends Hewan {
  Kucing(super.name, super.jenis);

  @override
  void suara(){
    print('Suara Kucing bernama ${name} berjenis ${jenis} yaitu meong meonggg');
  }

  void lari(){
    print('Kucing bernama ${name} dan ${jenis} bisa berlari');
  }
}

class Unggas extends Hewan {
  String? keluarga;

  Unggas(super.name,super.jenis, this.keluarga);

  @override
  void suara(){
    print('Suara Unggas ${keluarga} berjenis ${jenis} seperti siulan');
  }
}

class Burung extends Unggas {
  Burung(super.name,super.jenis,super.keluarga);

  void terbang(){
    print('Burung ${name} bisa Terbang');
  }
}

void main(List<String> args) {
  var h1 = Hewan('Kucing', 'garong');
  h1.suara();

  var kucing = Kucing('Cathy', 'Persia');
  kucing.suara();
  kucing.lari();

  var unggas = Unggas('', 'Elang', 'Burung');
  unggas.suara();

  var burung = Burung('Birdy', 'Kakatua', 'Burung');
  burung.suara();
  burung.terbang();
}