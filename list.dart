void main(){
  var listInt = [12,34,56];
  var listString = <String>[];

  listString.add('Satu Dua');
  listString.add('Tiga Empat');
  listString.add('Lima Enam');

  print(listInt);
  print(listInt.length);
  print(listInt[1]);

  print(listString);
  print("Panjang array ${listString.length}");
  print("Posisi String ketiga \"${listString[2]}\"");
}