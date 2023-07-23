enum EnumofYear {
  January,
  February,
  March,
  April,
  May,
  June,
  July,
  August,
  September,
  October,
  November,
  December,
}

void main() {
  print("JavaTpoint - Dart Enumeration");
  print(EnumofYear.values);
  EnumofYear.values.forEach((v) => print('value: $v, index: ${v.index}'));

  List l1 = [2, 3, 4, 5, 6, 7];
  l1.add(98);
  l1.addAll([1, 2, 3, 4, 6, 9]);
  l1.remove(98);
  l1[4] = 66;
  var l2 = l1.reversed;
  l1.sort();
  for (var i in l1) {
    print("$i");
  }
  print("$l2");
}
