class Manusia{
    int? mata;
    int? kaki;

    Manusia (){
        mata = 2;
        kaki = 2;
    
    }
}

void main(){
    var manusia = Manusia();
    print(manusia.mata);
    print(manusia.kaki);
}