import 'dart:io';
void main(List<String> args) {
  var array = []; 
  // stdout.write('Masukkan 5 angka :');

  for(var i = 0; i < 5; i++){
    stdout.write('Masukkan angka : ');
    var angka = int.parse(stdin.readLineSync()!);
    array.add(angka);
  }

  print('Array yang terbentuk : $array');
}