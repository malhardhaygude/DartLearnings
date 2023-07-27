class A {
  final int x;
  final int y;

  A({required this.x, required this.y});

  // A.zeros()
  //     : x = 0,
  //       y = 0;

  A.zeroX({required int y}) : this(x: 0, y: y);
  A.zeroY({required int x}) : this(x: x, y: 0);

  @override
  String toString() => "A(x:$x, y:$y)";
}

void main() {
  var aX = A.zeroX(y: 10);
  var aY = A.zeroY(x: 10);

  print("ax --> $aX");
  print("ay --> $aY");
}
