void main(){
  List mahasiswa = [];
  mahasiswa.add(['Adi','IT','2019']);
  mahasiswa.add(['Budi','Industri','2020']);
  mahasiswa.add(['Chindy','Teknik Nuklir','2019']);
  
  Map<String, dynamic> map = {};
  for(var item in mahasiswa ){
    map = {
      'name' : item[0],
      'jurusan' : item[1],
      'angkatan' : item[2]
    };
    print(map);
  }
  
}