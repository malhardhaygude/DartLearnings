import "class2.dart";

void main() {
  var b = A(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12);
  print("Varaible f have value f = ${b.f} ");
  print("Static variable i is accesed by class name i = ${A.i}");
  // print(${b._private});  // not allowed as it is private
}
