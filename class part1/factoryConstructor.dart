import 'dart:math';

class Point {
  const Point({required this.x, required this.y});
  final int x;
  final int y;
  static const Point origin = Point(x: 0, y: 0);

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
}
