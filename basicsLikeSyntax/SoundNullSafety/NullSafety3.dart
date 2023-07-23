void main(List<String> args) {
  driveToSeatedCar('Malhar');
}

void driveToSeatedCar(String owner, [String? passenger]) {
  if (passenger != null) {
    print("Yayy owner: $owner got passenger: $passenger..");
  } else {
    print("Oops owner: $owner dont have passenger");
  }
}
