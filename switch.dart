void main() {
  var nilai = 90;

  switch(nilai){
    case >=92 && <=100:
      print('Predikat Nilai Anda : A');
      break;
    case >=83 && <=91:
      print('Predikat Nilai Anda : B');
      break;
    case >=75 && <=82:
      print('Predikat Nilai Anda : C');
      break;
    case >=41 && <=74:
      print('Predikat Nilai Anda : D');
      break;
    case >=00 && <=40:
      print('Predikat Nilai Anda : E');
      break;
    default:
      print('Cek kembali nilai yang dimasukkan !');
  }
}