import 'dart:io';


void task1(int nilai){
  //Task 1. a jika nilai bernilai > 70, return A
  if(nilai > 70){
    print('Nilai anda : A');
  } else if(nilai > 40 && nilai <= 70){
    //Task 1. a jika nilai bernilai > 40 , return B
    print('Nilai anda : B');
  } else if(nilai > 0 && nilai <= 40){
    //Task 1. a jika nilai bernilai > 40 , return C
    print('Nilai anda : C');
  }
  else {
    //Task 1. a jika nilai bernilai > 40 , return 0
    print(' ');
  }

}

void task2(int n){
  int factorial = 1;
  for(int counter = n; counter >= 1; counter--){
    factorial = factorial * counter;
  }
  print('Hasil $n ! adalah  $factorial');
}

void main(List<String> args) {
  
  // stdout.writeln('Silahkan input nilai anda: ');
  // int nilai = int.parse(stdin.readLineSync()!);
  // task1(nilai);
  task2(10);
  task2(20);
  task2(30);
    
}
