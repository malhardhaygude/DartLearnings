void main() {
  String? carName; // using ? operator  make strring nullable
  late String bikeName; // using "late" keyword

  late int speed;

  carName = null;
  carName = 'Alto';
  bikeName = 'Pulsar';
  speed = 190;
  print(carName);
  print(bikeName);
  print(speed);
}
