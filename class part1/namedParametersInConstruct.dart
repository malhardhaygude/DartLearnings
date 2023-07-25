class A {
  // Normal initialisation
  A(
    this._private, {
    required this.a,
    required this.b,
    required this.c,
    required this.d,
    required this.e,
  });

  A.zero()
      : a = 0,
        b = 0,
        c = 0,
        d = 0,
        e = 0,
        _private = 0;

  A.fromJson({required Map<String, int> json_1})
      : a = json_1['a'],
        b = json_1['b']!,
        c = json_1['c']!,
        d = json_1['d']!,
        e = json_1['e']!,
        _private = json_1['_private'];

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

  @override
  String toString() => "A(_private:$_private, a:$a, b:$b, c:$c, d:$d, e:$e)";
}

void main() {
  A a = A(1, a: 2, b: 3, c: 4, d: 5, e: 6);
  A a1 = A.zero();
  A a2 = A.fromJson(
      json_1: {"_private": 1, "a": 2, "b": 3, "c": 4, "d": 5, "e": 6});
  print("a --> $a");
  print("a1 --> $a1");
  print("a2 --> $a2");
}
