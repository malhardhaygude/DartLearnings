import 'dart:math';

import 'package:geometry_and_test/geometry/src/Exceptions/ExceptionTriangle.dart';
import 'package:geometry_and_test/geometry/src/Exceptions/Not_all_side.dart';

enum TriangleType { lengthsGiven, pointsGiven, baseHeightGiven, invalid }

class Triangle {
  Triangle.fromLengths({required this.a, required this.b, required this.c})
      : triangleType = _validTriangleLengthsGiven(a!, b!, c!)
            ? TriangleType.lengthsGiven
            : TriangleType.invalid;

  Triangle.fromPoints({required this.p1, required this.p2, required this.p3})
      : triangleType = _validTrianglePointsGiven(p1!, p2!, p3!)
            ? TriangleType.pointsGiven
            : TriangleType.invalid,
        a = _distanceBetweenPoints(p1!, p2!),
        b = _distanceBetweenPoints(p2!, p3!),
        c = _distanceBetweenPoints(p1!, p3!);

  Triangle.fromBaseHeight({required this.base, required this.height})
      : triangleType = _validTriangleBaseHeightGiven(base, height)
            ? TriangleType.baseHeightGiven
            : TriangleType.invalid;

  Point? p1;
  Point? p2;
  Point? p3;

  num? a;
  num? b;
  num? c;

  num? base;
  num? height;

  final TriangleType triangleType;

  static bool _validTriangleLengthsGiven(num a, num b, num c) =>
      a >= 0 &&
      b >= 0 &&
      c >= 0 &&
      (a + b) >= c &&
      (b + c) >= a &&
      (a + c) >= b;

  static bool _validTrianglePointsGiven(Point p1, Point p2, Point p3) =>
      (p1.x * (p2.y - p3.y) + p2.x * (p3.y - p1.y) + p3.x * (p1.y - p2.y))
          .abs() !=
      0;

  static bool _validTriangleBaseHeightGiven(num? base, num? height) =>
      base! >= 0 && height! >= 0;

  static double _distanceBetweenPoints(Point p1, Point p2) =>
      sqrt((pow((p1.x - p2.x), 2) + pow((p1.y - p2.y), 2)));

  num get area {
    switch (triangleType) {
      case TriangleType.lengthsGiven:
        final s = 1 / 2 * (a! + b! + c!);
        return sqrt(s * (s - a!) * (s - b!) * (s - c!));
      case TriangleType.baseHeightGiven:
        return 1 / 2 * base! * height!;
      case TriangleType.pointsGiven:
        final sum = (p1!.x * (p2!.y - p3!.y) +
                p2!.x * (p3!.y - p1!.y) +
                p3!.x * (p1!.y - p2!.y))
            .abs();
        return 1 / 2 * sum;
      case TriangleType.invalid:
        throw InvalidTriangleException();
    }
  }

  num get perimeter {
    switch (triangleType) {
      case TriangleType.lengthsGiven:
        return a! + b! + c!;
      case TriangleType.pointsGiven:
        return a! + b! + c!;
      case TriangleType.baseHeightGiven:
        throw NotAllSidesException();
      case TriangleType.invalid:
        throw InvalidTriangleException();
    }
  }
}
