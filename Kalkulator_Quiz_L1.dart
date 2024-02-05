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
      print('\nHasil Penjumlahan $nilai adalah : $hasil');

    case 2:
      List<int> nilai = inputAngka();
      int hasil = sifir(nilai);
      print('\nHasil Perkalian $nilai adalah : $hasil');

    case 3:
      int nishab = 8089166;
      print('');
      print('Menghitung zakat dari penghasilan per bulan (nishab 85gr emas)');
      stdout.write('Masukkan jumlah penghasilan per bulan anda saat ini : ');
      int? penghasilan = int.parse(stdin.readLineSync()!);
      if (penghasilan >= nishab) {
        double besarZakat = 0.0025 * penghasilan;
        print('');
        print('Penghasilan anda sebesar Rp $penghasilan telah melebihi nishab sehingga wajib bayar zakat');
        print('Besar zakat per bulan yang wajib dibayarkan : Rp $besarZakat');
      } else {
        print('Penghasilan anda dibawah nishab sehingga tidak wajib membayar zakat, tetapi bisa berinfak');
      }

    case 4:
      print('');
      stdout.write('Masukkan panjang dari kotak yang hendak dihitung luasnya : ');
      int? panjang = int.parse(stdin.readLineSync()!);
      stdout.write('Masukkan lebar dari kotak yang hendak dihitung luasnya : ');
      int? lebar = int.parse(stdin.readLineSync()!);
      int luasKotak = panjang * lebar;
      print ('Luas Kotak dengan panjang $panjang dan lebar $lebar adalah : $luasKotak');

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