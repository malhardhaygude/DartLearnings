void main() {
  int a = 7;
  int b = 2;
  double c = a / b;
  int r = a % b;

  int d = a ~/ b;

  print('$a / $b = $c and r is $r');
  print('$a ~/ $b = $c and r is $r');

  // increment operator

  var x = 5;
  var x1 = x++;
  print(x1);
  ++x;
  print(x);
}
