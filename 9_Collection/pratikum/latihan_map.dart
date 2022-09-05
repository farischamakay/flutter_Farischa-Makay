void main() async{
  var nilai = {};
  nilai['nama'] = 'Farischa';
  nilai['nilai'] = 15;
  print(nilai);

  print('Nilai dari ${nilai['nama']} adalah ${nilai['nilai']}');

  for(var key in nilai.keys){
    print(nilai[key]);
  }


}