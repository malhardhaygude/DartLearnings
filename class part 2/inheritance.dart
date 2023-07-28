class Animal extends Object {
  final String name;
  Animal({required this.name});
  void whoIAm(Animal A) => print("This is animal");
}

class Bird extends Animal {
  Bird(String name) : super(name: name);
}

class Duck extends Bird {
  Duck(String name) : super(name);
  // Duck(Animal a); : super()

  @override
  // String whoIAm() => "I am duck";
  whoIAm(covariant Bird b) => print("I am duck");
}

void main() {
  var b = Bird("Eagle");
  print("Name: ${b.name}");
  print("Method in super class: ");
  b.whoIAm(b);

  Duck duck = new Duck("MEWTew");
  print("Duck Name: ${duck.name}");
  // print("${duck.whoIAm()}");
  duck.whoIAm(b);
}
