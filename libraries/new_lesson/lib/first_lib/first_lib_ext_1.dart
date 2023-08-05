// library second_lib;

// import 'package:new_lesson/first_lib.dart';

part of 'first_lib.dart';

void newFunc() {
  var a = A();
  a.publicField; // only public fields can be shared between libraries
  topLevelPublicField = 10101;
  var c = C();
  print(c.num2);
  a._privateField; // private shared when file is part of ...
}

class B {}
