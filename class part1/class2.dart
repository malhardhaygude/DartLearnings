class A {
  // Normal initialisation
  A(int a, int b, int x, int d, int e, int f, int g, int h, int i, int j, int k,
      int p)
      : this.c = x {
    this.a = a;
    this.b = b;
    this._private = p;
    // this.x = c;
    this.d = d;
  }

  // initializer list

  // A(int a, int b, int c, int p, int x)
  //     : this.a = a,
  //       this.b = b,
  //       this.c = c,
  //       this.d = x,
  //       this._private = p;

  // A(this.a, this.b, this.c, this._private);
  // above is simpler way than writing intializer list of=r constructor body

  int? _private;
  int? a;

  int b = 1;
  final int c;
  late int d;
  late final int e;
  late final int f = 5;
  static int g = 6;
  static late int h;
  static late int i = 8;
  static late final int j;
  static const int k = 10;
}

void main() {
  A a = A(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12);
  var a1 = A(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12);
  print(a);
  print(a1);

  print(a.runtimeType);
  print(a1.runtimeType);
  print(a1.a);
  print(a1.b);

  a1._private = 78;
  print(a1._private);
  a.d = 900;
  print(a.d);

  A.j = 198;
  print(A.j); // w/o initializing access will throw error as late
}
