class Singleton_0 {
  Singleton_0._privateConstructor();
  static final Singleton_0 _instance = Singleton_0._privateConstructor();
  factory Singleton_0() {
    return _instance;
  }
  Singleton_0.mynw() {}
}

class ConstConstructor {
  const ConstConstructor();
}

void main() {
  var s1 = Singleton_0();
  var s2 = Singleton_0();
  var s3 = Singleton_0.mynw();

  print("Singleton isIsentical: ${identical(s1, s2)}");

  var c1 = ConstConstructor();
  var c2 = ConstConstructor();
  print("Constant isIsentical: ${identical(c1, c2)}");
}
