void main(){
  Set<int> numbers = {};
  var strings = <String>{};
  var doubles = <double>{};

  print(numbers);

  numbers.add(12);
  numbers.add(45);
  numbers.add(78);

  print(numbers);
  print(numbers.length);

  numbers.remove(45);
  print(numbers);
  print(numbers.length);

}