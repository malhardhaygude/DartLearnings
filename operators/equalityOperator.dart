void main() {
  int a = 10;
  int b = 10;
  print(a == b);
  print(identical(a, b));

  var l1 = [2, 3, 5, 6, 7];
  var l2 = [2, 3, 5, 6, 7];
  print(l1 == l2);
  print(identical(l1, l2));

  var a1 = const A(12, 13);
  var a2 = const A(12, 13);
  print(a1 == a2);
  print(identical(a1, a2));
}

class A {
  final int a;
  final int b;
  const A(this.a, this.b);
}
