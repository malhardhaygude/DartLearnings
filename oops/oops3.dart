class Myclass {
  // class fields claas variables (staic)
  static double? num = 105; // nullable double type..
  String? name = 'Omkar'; // nullable string type..
  static List myList = [
    "Malhar",
    "Pushpa",
    "Aslam",
    "Soma",
    "Amol"
  ]; // growable list

  Myclass(double num, String name, List myList) {
    print("This is very first call because I am constructor!!!");

    // see using this and without using this
    Myclass.num = num;
    this.name = name;
    print(
        "This is num and name from constructor: Num----> $num Name-----> $name");

    Myclass.myList.addAll(myList);
  }

  myMethod() {
    print("The number is: $num");
    print("The name is: $name");
  }

  static myListPrint() {
    for (var i in Myclass.myList) {
      print("Member ${myList.indexOf(i) + 1}: $i");
    }
  }
}

void main() {
  Myclass mc = new Myclass(109, 'Malhar', ['A', 'B', 'C']);
//   Myclass mc2 = new Myclass(110, 'Aslam', ['X', 'Y', 'Z']);
  // print("Using object .... Num: ${mc.num}");
  // print("Using object .... Name: ${mc.name}");

  // method call using object
  mc.myMethod();
  // mc2.myMethod();
  // mc.myListPrint();

  // accessing fields (class varibles) using class name

  print("Using class name .... num: ${Myclass.num}");

  Myclass.myListPrint();
}
