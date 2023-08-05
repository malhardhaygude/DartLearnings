// class IntegerExtension extends int {
//   int get luckyNumber => 08;
// }

// above is not allowed in dart...

extension IntegerExtension on int {
  int get luckyNumber => 08;
  int add8() => this + 8;
}

class A {
  A._(); // private constructor..
}

// class B extends A{

// }   not possible as A has private constructor

void main() {
  // 1.luckyNumber;
  print("0${1.luckyNumber}");
  print("add8() method ---> ${06.add8()}");
}
