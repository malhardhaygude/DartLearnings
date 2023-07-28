abstract class UserInterfaceToImplement {
  late final int id;
  void add();
  void delete();
  void update();
  void noOne();
}

class UserInterfaceImplementation implements UserInterfaceToImplement {
  UserInterfaceImplementation() : super();
  var id = 101;
  add() {
    print("Add");
  }

  delete() {
    print("Delete");
  }

  update() {
    print("Update");
  }

  noOne() {
    print("noOne");
  }
}

void main() {
  var object1 = UserInterfaceImplementation();
  var object2 = UserInterfaceImplementation();
  object1.add();
  object2.noOne();
}
