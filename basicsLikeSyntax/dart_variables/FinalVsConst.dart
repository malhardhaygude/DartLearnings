void main(List<String> str) {
  // const is variable  const is value
  //(var var1 = 5) here var1 and 5 both are constant
  const int num = 10;
  // num = 45;  // not allowed
  print(num);
  // also const can be constructor
  var l1 = const [1, 2, 3, 5, 6];
  // l1.add(23); // runtime exception is thrown cant modify
  print(l1);

  final String name = "Malhar Dhaygude";
  print(name);
  // name = "Omkar Shirote"; // not allowed

  final List l2 = [1, 2, 3];
  l2.add(12); // no error ...
  List l2_1 = [8, 5, 6, 7, 9];
  // l2 += l2_1;  // not allowed
  print(l2 + l2_1);

  final List l3 = const [23, 24, 25]; // similar const List l3 = [23,24,25]
  // l3.add(67); // throw runtime error.
  print(l3);
}
