import 'dart:io';
void main(List<String> args) {
  final arg1 = double.parse(args[0]);
  final arg2 = double.parse(args[2]);
  if(args.length > 0 && args.length == 3){
    switch(args[1]){
      case '+' :
      print('${arg1} + ${arg2} = ${arg1+arg2}');
      break;
      case '-' :
      print('${arg1} - ${arg2} = ${arg1-arg2}');
      break;
      case '+' :
      print('${arg1} x ${arg2} = ${arg1*arg2}');
      break;
      case '/' :
      print('${arg1} / ${arg2} = ${arg1/arg2}');
      break;
    }
  }
  else {
    print('Perhitungan pada program keliru');
  }
}