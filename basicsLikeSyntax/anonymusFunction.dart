void main() {
  var l1 = [10, 20, 30, 40];

  l1.forEach((element) {
    print("${l1.indexOf(element)}:$element");
  });

  l1.forEach((element) => print("$element"));
}
