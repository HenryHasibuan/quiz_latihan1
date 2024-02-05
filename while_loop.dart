void main() {
  var counter = 1;
  while(counter <= 10) {
    if (counter % 2 == 0) {
      print('looping for ke-$counter');
    } else {
      print('ganjil counter');
    }
    counter++;
  }
}