var perkalian = ( int a, int b) => a * b;

void main() async {
  var nilai = [10, 20, 30, 40, 50];
  var x = [];

  await Future.delayed(Duration(seconds: 1), () { 
    for(var n in nilai){
      x.add(perkalian(n, 3));
  }
  });
  
  print(x);
}
