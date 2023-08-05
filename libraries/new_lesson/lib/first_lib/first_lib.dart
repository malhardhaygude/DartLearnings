library new_lesson_lib;

import 'dart:math' as math;

part 'first_lib_ext_1.dart';
part 'first_lib_ext_2.dart';

int topLevelPublicField = 101;
int _topLevelPrivateField = 102;

class A {
  int _privateField = 10;
  void _privateMethod() {}

  int publicField = 101;
  void publicMethod() {}
}

void someFunc() {
  var a = A();
  a._privateField; // dart offers library private fields not class private
}

void main() {
  var c = C(); // class C() from first_lib_ext_2.dart file..
  print(c.num);
}
