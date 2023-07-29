// explicit interfaces usnig abstarct keyword
abstract class UserInterfaceToImplement {
  late final int id;
  void add();
  void delete();
  void update();
  void noOne();
}

abstract class UserInterfaceToImplement_1 {
  late final int mob;
  void add_1();
  void delete_1();
}

class UserInterfaceImplementation
    implements UserInterfaceToImplement, UserInterfaceToImplement_1 {
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

  int mob = 98789;
  add_1() {
    print("Add...");
  }

  delete_1() {
    print("Delete_1");
  }

  // @override
  // void delete_1() {
  //   // TODO: implement delete_1
  // }
}

// implicit interfaces
class A {
  A(String mouse);
  void method_a() {} // this is not absract method as class is not abstract
  external void
      doSomething(); //this is abstract method by using external keyword
}

class B {
  void method_b() {}
}

class C {
  void method_c() {}
}

// mix extends and implements
class D extends A implements B, C {
  D(String nm) : super(nm);
  method_a() {
    print("Method of A class implemented in D class");
  }

  method_b() {
    print("Method of B interface implemented in D class");
  }

  method_c() {
    print("Method of C interface implemented in D class");
  }
}

void main() {
  var object1 = UserInterfaceImplementation();
  var object2 = UserInterfaceImplementation();
  var d1 = D("Malhar ");
  object1.add();
  object2.noOne();
  d1.method_c();
  d1.method_a();
}
