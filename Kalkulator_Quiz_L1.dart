import 'dart:io';

void main() {
  print ('Kalkulator');
  print ('NIP : ARN182-52130');
  print ('Menu:');
  print ('1. Penambahan');
  print ('2. Perkalian');
  print ('3. Hitung Zakat');
  print ('4. Hitung Luas Kotak');
  //print ('Masukkan Angka Pilihan (1-4) ?');
  stdout.write('Pilih (1-4) lalu Enter : ');      //print dgn tanpa ganti baris
  int? pilih = int.parse(stdin.readLineSync()!);

  switch (pilih) {
    case 1:
      List<int> nilai = inputAngka();
      int hasil = tambah(nilai);
      print ('\nHasil Penjumlahan $nilai adalah : $hasil');

    case 2:
      List<int> nilai = inputAngka();
      int hasil = sifir(nilai);
      print ('\nHasil Perkalian $nilai adalah : $hasil');

    case 3:
      stdout.write('Masukkan angka : ');
      String? strNum = stdin.readLineSync();
      strNum = strNum!.replaceAll(new RegExp(r"\D"), "");
      print(strNum.isEmpty) ;
        if (strNum.isEmpty) {
          strNum = "0";
        }
      int num = int.parse(strNum);
      //int? angka = int.parse(stdin.readLineSync()!);
      print(strNum.isEmpty) ;
    case 4:
    default:
      print ('Salah Memasukkan Input (hanya angka 1,2,3,4)');
  }
}

int tambah(List<int> numbers) {
  var total = 0;
  for (var value in numbers) {
    total += value;
  }
  return total;
}

int sifir(List<int> numbers) {
  var total = 1;
  for (var value in numbers) {
    total *= value;
  }
  return total;
}

List<int> inputAngka () {
  int i = 1;
  final data = <int>[];
  print('');
  do {
    stdout.write('Masukkan angka ke-$i (Enter to finish): ');
    String? strNum = stdin.readLineSync();
    strNum = strNum!.replaceAll(new RegExp(r"\D"), "");
    if (strNum.isEmpty) {
      break;
    }
    int num = int.parse(strNum);
    data.add(num);
    i++;
  } while (num != 0);
  return data;
}