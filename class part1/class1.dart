// by default it is class A extends object
// instance avriable or field..
class A {
  @override // override base class method toStrih
  String toString() {
    return "This is A !";
  }
}

void main(List<String> str) {
  Object? o;
  var a = A();
  print(a);
  print("Runtime type ===> ${a.runtimeType}");
  print("To String ===> ${a.toString()}");
  print("Hashcode of a ===> ${a.hashCode}");

  print(o);
  print(o.runtimeType);
}
