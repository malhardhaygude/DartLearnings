int checkValue(int? someValue) {
  if (someValue == null) {
    return 0;
  }
  // At this point the value is not null.
  return someValue.abs();
}

void main() {
  print(checkValue(-45));
  print(checkValue(null));
}
