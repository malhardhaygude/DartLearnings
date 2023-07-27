import 'dart:math';

class Point {
  const Point({required this.x, required this.y});
  final int x;
  final int y;
  static const Point origin = Point(x: 0, y: 0);

  // static method
  static distanceBetween(Point a, Point b) {
    var dx = a.x - b.x;
    var dy = a.y - b.y;
    return sqrt(pow(dx, 2) + pow(dy, 2));
  }

  // operator methods
  Point operator +(Point p) => Point(x: x + p.x, y: y + p.y);
  Point operator -(Point p) => Point(x: x - p.x, y: y - p.y);

  num distanceTo(Point p) {
    var dx = x - p.x;
    var dy = y - p.y;
    return sqrt(pow(dx, 2) + pow(dy, 2));
  }

  factory Point.randomFields({required bool isPositive}) {
    int minNegVal = -99;
    int maxNegVal = -1;
    int minPosVal = 0;
    int maxPosVal = 99;

    int randomPosVal = minPosVal + Random().nextInt(maxPosVal - minPosVal);
    int randomNegVal = minNegVal + Random().nextInt(maxNegVal - minNegVal);

    return isPositive
        ? Point(x: randomPosVal, y: randomPosVal)
        : Point(x: randomNegVal, y: randomNegVal);
  }

  // factory Point.descrption() {
  //   return origin;
  // }

  factory Point.descrption() {
    return Point.randomFields(isPositive: true);
  }

  @override
  String toString() => "P(x:$x,y:$y)";
}

void main() {
  var randomP1 = Point.randomFields(isPositive: true);
  var randomP2 = Point.randomFields(isPositive: false);
  var o = Point.descrption();

  print("randomP1: $randomP1");
  print("randomP2: $randomP2");
  print("O: $o");

  var p1 = Point(x: 9, y: 8);
  var p2 = Point(x: 2, y: 3);
  print("Distance from p1 to p2: ${p1.distanceTo(p2)}");
  print("Sum of p1 and p2: ${p1 + p2}");
  print("Substraction of p1 and p2: ${p1 - p2}");

  print("Static Method Implementation:");
  print("distanceBetween--> ${Point.distanceBetween(p1, p2)}");
}
