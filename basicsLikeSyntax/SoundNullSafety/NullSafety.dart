class Car {
  int speed = 129; // non-nullable
  dynamic speed3 = 1243;
  int? newSpeed = null; // nullable
}

void main() {
  Car car1 = new Car();
  print(car1.speed);
  print(car1.speed3);
  print(car1.newSpeed);

  String? carName; // initialized to null by default
  int? marks = 36; // initialized to non-null
  marks = null; // can be re-assigned to null

  print('$carName');
  print('$marks');

  int? someValue = 1123;
  int data = someValue!; // This is valid as value is non-nullable

  print(data);
}
