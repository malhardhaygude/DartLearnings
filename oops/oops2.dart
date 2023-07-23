class Myclass {
  // class fields claas variables (staic)
  double? num = 105; // nullable double type..
  String? name = 'Omkar'; // nullable string type..

  Myclass(double num, String name) {
    // see using this and without using this
    this.num = num;
    this.name = name;
    print("This is very first call because I am constructor!!!");
    print(
        "This is num and name from constructor: Num----> $num Name-----> $name");
  }

  myMethod() {
    print("The number is: $num");
    print("The name is: $name");
  }
}

void main() {
  Myclass mc = new Myclass(109, 'Malhar');
  Myclass mc2 = new Myclass(110, 'Aslam');
  print("Using object .... Num: ${mc.num}");
  print("Using object .... Name: ${mc.name}");

  // method call using object
  mc.myMethod();
  mc2.myMethod();
}
