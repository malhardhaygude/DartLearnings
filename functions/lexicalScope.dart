// lexical closure
void main() {
  var car = makeCar('alto');
  print(car('k10 800'));
}

String Function(String) makeCar(String carName) {
  var engine = 'bs-6';
  return (model) => "$model,$carName,$engine"; // closure object
  // having access of variable outside of its scope.
}
