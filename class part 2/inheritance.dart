class Animal extends Object {
  final String name;
  Animal({required this.name});
  void whoIAm() => print("This is animal");
}

class Bird extends Animal {
  Bird(String name) : super(name: name);
}

class Duck extends Bird {
  Duck(String name) : super(name);

  @override
  // String whoIAm() => "I am duck";
  void whoIAm() => print("I am duck");
}

void main() {
  var b = Bird("Eagle");
  print("Name: ${b.name}");
  print("Method in super class: ");
  b.whoIAm();

  Duck duck = new Duck("MEWTew");
  print("Duck Name: ${duck.name}");
  // print("${duck.whoIAm()}");
  duck.whoIAm();
}
