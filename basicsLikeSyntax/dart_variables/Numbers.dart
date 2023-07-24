// Num is base class or we can say package..
// int and double are subpackages Implements functionalities inside the
// num class.

void main(List<String> str) {
  num mynumber = 67.89; // double mynumber = 67.89;
  num mynumber_2 = 67; // int mynumber_2 = 67;
  print(mynumber);
  print(mynumber_2);

  double a = 908.908;
  int b = 798;
  int d = 798;
  int e = d;
  double c;
  c = a + b;
  print(c.hashCode);
  print(d.hashCode);
  print(e.hashCode);

  print(e.isInfinite); // property of num class
  print(mynumber_2.isInfinite); // property of num class
  print(e.remainder(2)); // property of num class
  print(mynumber_2.remainder(2)); // property of num class

  // if num is there then why different int double needed
  // Reason: there separate properties and methods implemented specifically
  // for int and double sub classes ..

  // print(mynumber_2.isEven); // not allowed
  print(e.isEven); //allowed
  print(e.isOdd); //allowed

  // typecast

  print(int.parse("-10000"));
  print(double.parse("100.200"));
  print(a.toString());
  print(a.toInt());
  print(b.toDouble());

  // ~/ operator

  print(10 / 3);
  print(10 ~/ 3);

  // hashcode

  int x = 6;
  int y = 6;
  int z = 6;
  print(x.hashCode);
  print(y.hashCode);
  print(z.hashCode);
}
