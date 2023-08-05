class Tuple<E> {
  final E? _a;
  final E? _b;
  final E? _c;

  const Tuple(this._a, this._b, this._c);

  Tuple.fromList(List<E> list1)
      : _a = list1.asMap().containsKey(0) ? list1[0] : null,
        _b = list1.asMap().containsKey(1) ? list1[1] : null,
        _c = list1.asMap().containsKey(2) ? list1[2] : null;

  E? get first => _a;
  E? get second => _b;
  E? get third => _c;

  Tuple<num> operator +(Tuple<num> t) {
    if (this is Tuple<num>) {
      final tupleHere = this as Tuple<num>;
      return Tuple(
          tupleHere._a! + t._a!, tupleHere._b! + t._b!, tupleHere._c! + t._c!);
    }
    return const Tuple(0, 0, 0);
  }
  // Tuple operator -(Tuple t) => Tuple(_a! - t._a!, _b! - t._b!, _c! - t._c!);

  @override
  String toString() => "Tuple(First: $first, Second: $second, Third: $third)";
}

void main() {
  const tuple1 = Tuple(11, 12, 13);
  const tuple1_1 = Tuple(11, 12, 13);
  Tuple tuple2 = const Tuple("a", "b", 8.7980);
  Tuple tuple3 = Tuple.fromList([9, 8, 10]);
  Tuple tuple4 = Tuple.fromList([99, 233, 33, 31, 13, 32, 122]);
  final tuple5 = tuple1 + tuple1_1;

  print("Tuple1 --->$tuple1");
  print("Tuple2 --->$tuple2");
  print("Tuple3 --->$tuple3");
  print("Tuple4 --->$tuple4");
  print("Tuple5 --->${tuple5}");
  print([89, 89, 99].last);
  print([89, 89, 99].removeLast());
}
