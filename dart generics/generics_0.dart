class Tuple {
  final int? _a;
  final int? _b;
  final int? _c;

  const Tuple(this._a, this._b, this._c);

  Tuple.fromList(List<int> list1)
      : _a = list1.asMap().containsKey(0) ? list1[0] : null,
        _b = list1.asMap().containsKey(1) ? list1[1] : null,
        _c = list1.asMap().containsKey(2) ? list1[2] : null;

  int? get first => _a;
  int? get second => _b;
  int? get third => _c;

  Tuple operator +(Tuple t) => Tuple(_a! + t._a!, _b! + t._b!, _c! + t._c!);
  Tuple operator -(Tuple t) => Tuple(_a! - t._a!, _b! - t._b!, _c! - t._c!);

  @override
  String toString() => "Tuple(First: $first, Second: $second, Third: $third)";
}

void main() {
  Tuple t = const Tuple(10, 20, 30);
  Tuple t1 = const Tuple(10, 20, 30);
  print(t.first);
  print(t.second);
  print(t.third);
  print(t._a);
  print(identical(t, t1));

  var list1 = [1, 2, 33];

  Tuple t2 = Tuple.fromList(list1);
  print(t2.third);
  print((t1 + t));

  Tuple tuple1 = const Tuple(11, 12, 13);
  Tuple tuple2 = const Tuple(21, 22, 23);
  Tuple tuple3 = Tuple.fromList([9, 8, 10]);
  Tuple tuple4 = Tuple.fromList([99, 233, 33, 31, 13, 32, 122]);
  Tuple tuple5 = tuple1 + tuple3;

  print("Tuple1 --->$tuple1");
  print("Tuple2 --->$tuple2");
  print("Tuple3 --->$tuple3");
  print("Tuple4 --->$tuple4");
  print("Tuple5 --->${tuple5}");
}
