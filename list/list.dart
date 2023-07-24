class A {
  List<int> l1 = [1, 2, 0, 89, 3, 4];
  List<int> l1_2 = [11, 23, 22, 1, 232, 21, 20, 10];
  var l2 = [];
  var l3 = [23.4, 67.7, 89.90];
  List<Object> l4 = [12, 3.4, true, "Malhar"];
}

void main(List<String> ar) {
  A a = A();
  a.l1
    ..addAll(a.l1_2)
    ..sort();
  print(a.l1);

  var l3 = [];
  l3 = [...a.l1, ...a.l1_2];
  print(l3);
}
