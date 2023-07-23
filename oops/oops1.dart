class Myclass {
  // class fields claas variables (staic)
  double? num = null; // nullable double type..
  String? name = 'Omkar'; // nullable string type..
  int id = 101;

  myMethod() {
    print("The number is: $num");
    print("The name is: $name");
  }
}

void main() {
  Myclass mc = new Myclass();
  // Myclass mc2 = new Myclass();   // another object

  print("Using object .... Num: ${mc.num}");
  print("Using object .... Name: ${mc.name}");

  // method call using object
  mc.myMethod();
}
