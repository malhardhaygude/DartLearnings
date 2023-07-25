// as is is!

import 'dart:math' as math;

void main() {
  print(math.Point(0, 0));
  print(math.Random);
  print(math.pi);

  var ls = [11, 2.345, true, 'Malhar', null];
  print(ls);

  print("${ls[0]}");
  print(ls[0].runtimeType);
  var ls0 = ls[0] as int;
  var ls1 = ls[1] as double;
  var ls2 = ls[2] as bool;
  var ls3 = ls[3] as String;
  var ls4 = ls[4] as Null;

  print("$ls0");
  print(ls0.runtimeType);

  var ls_1 = [11, 2.345, true, 'Malhar', null]..forEach((element) {
      if (element is int) {
        print("$element is inetger type");
        print("IsEven : ${element.isEven} ");
      } else if (element is double) {
        print("$element is double type");
      } else if (element is bool) {
        print("$element is bool type");
      } else if (element is String) {
        print("$element is String type");
        print(element[0]);
      } else if (element == null) {
        print("$element is Null type");
      }
    });
}
