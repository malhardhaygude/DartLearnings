class Myclass {
  // class fields claas variables (staic)
  double? num = null; // nullable double type..
  String? name = 'Omkar'; // nullable string type..
  int id = 101;

  Myclass() {
    print("The constructor is here...!");
  }

  myClassMethod() {
    print("The number is: $num");
    print("The name is: $name");
  }
}

class ChildClass extends Myclass {
  // Super() {}
  int childId = 1034;
  String? name = 'childOmkar';
}

void main() {
  Myclass mc = new Myclass();
  ChildClass CC = new ChildClass(); // another object

  print("Using object .... Num: ${mc.num}");
  print("Using object .... Name: ${mc.name}");

  // method call using object
  mc.myClassMethod();
}
