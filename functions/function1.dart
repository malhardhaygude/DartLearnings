void main(List<String> str) {
  // Function? f;
  int Function(int) fun = retVar;
  var funcObject = retVar;
  // print(f);
  // print(fun);
  // print(funcObject);
  second(fun, 20);
  second((int a) => a, 22); // lamda or anonymous function
}

// int retVar(int a) {
//   return a;
// }

int retVar(int a) => a;
// int retVar(int a) => a.isEven ? 1 : 0;

// passing function and its argument as function argument
void second(int Function(int) f, int a) {
  print(f(a));
  print(f.call(a));

  //! return null;
}
