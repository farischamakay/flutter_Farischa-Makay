import 'dart:io';
void main(List<String> args) {
  var baris = 0;
  var kolom = 0;

  stdout.write('Masukkan jumlah baris : ');
  baris = int.parse(stdin.readLineSync()!);
  stdout.write('Masukkan jumlah kolom : ');
  kolom = int.parse(stdin.readLineSync()!);

  var matrix = [];
  var jumlah = 0;
  
  for (var i = 0; i < baris; i++){
    matrix.add([]);
    for (var j = 0; j < kolom; j++){
      stdout.write('Masukkan nilai pada [${i+1}, ${j+1}] : ');
      var input = int.parse(stdin.readLineSync()!);
      matrix[i].add(input);
    }
  }
  print(matrix);


  for (var i = 0; i < matrix.length; i++){
    var jumlah = matrix[i][0];
    var min = [i][0];
    var max = [i][0];
      for ( var j = 1; j < matrix[i].length; j++){
        // print jumlah nilai
        jumlah += matrix[i][j];
      
        if (min > matrix[i][j]) {
          min = matrix[i][j];
        }
        if (max < matrix[i][j]){
          max = matrix[i][j];
        }
    }
    print('Jumlah nilai pada matrix ke-${i+1} ${matrix[i]}: $jumlah');
    print('Jumlah rata-rata matrix ke-${i+1} ${matrix[i]}: ${jumlah/matrix[i].length}');
    print('Nilai minimal pada matrix ke-${i+1} ${matrix[i]}: $min');
    print('Nilai maximal pada matrix ke-${i+1} ${matrix[i]}: $max');
  }

}