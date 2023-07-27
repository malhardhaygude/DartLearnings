class Point {
  const Point({required this.x, required this.y});

  final int x;
  final int y;
  static const Point origin = Point(x: 0, y: 0);

  @override
  String toString() => "P(x:$x,y:$y)";
}

void main() {
  const p1 = const Point(x: 1, y: 2);
  const p2 = const Point(x: 1, y: 2);

  // const p1 = Point(x: 1, y: 2);
  // const p2 = Point(x: 1, y: 2);

  const pointList = [
    Point(x: 1, y: 2),
    Point(x: 1, y: 2),
    Point(x: 1, y: 2),
    Point(x: 1, y: 2),
    Point(x: 1, y: 2)
  ];
  // instead of making each point const simply make variable const

  print("p1 --> $p1");
  print("p2 --> $p2");
  print("p1,p2 are identical: ${identical(p1, p2)}");

  print("pointsList --> $pointList");
  print("p1,p2 are identical: ${identical(pointList[0], pointList[2])}");
}
