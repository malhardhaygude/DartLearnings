void main() {
  var a = A();
  // print(a);
  // print(a.runtimeType);
  a();
  A()();
}

class A {
  void call() => print("this is callable function!");
}
