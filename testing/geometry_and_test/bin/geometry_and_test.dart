// import 'package:geometry_and_test/geometry_and_test.dart' as geometry_and_test;
import 'package:geometry_and_test/geometry/geometry.dart';
import 'dart:math';

void main(List<String> arguments) {
  // print('Hello world: ${geometry_and_test.calculate()}!');
  final t1 = Triangle.fromPoints(
      p1: const Point(0, 0), p2: Point(1, 1), p3: Point(0, 2));
  print(' t1.area --->${t1.area}');

  final t2 = Triangle.fromLengths(a: 1, b: 1, c: 1);
  print(' t2.area ---> ${t2.area}');

  final t3 = Triangle.fromBaseHeight(base: 20, height: 12);
  print(' t3.area ---> ${t3.area}');
}
