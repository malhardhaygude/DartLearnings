void main() {
  var c1 = Car("S-presso");
  // print(rewardCar1(c1));
}

Car rewardCar1(Car? dreamCar) {
  if (dreamCar == null) {
    return Car('Random');
  }
  return dreamCar;
}

// ?:
Car rewardCar2(Car? dreamCar) => dreamCar != null ? dreamCar : Car('Random');

//??
Car rewardCar3(Car? dreamCar) => dreamCar ?? Car('Random');

class Car {
  final String name;
  Car(this.name) {
    print("MyCar");
  }
}
