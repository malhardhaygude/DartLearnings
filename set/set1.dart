void main() {
  Set<int> s = {12, 13, 1, 4};

  var s1 = {12, 13, 1, 4};
  s1.add(19);
  s1.addAll({20, 21, 21, 22, 22, 22});

  print(s);
  print(s.runtimeType);

  print(s1);
  print(s1.runtimeType);

  var s2 = {};
  print(s2.runtimeType);

  Set<String> ss = {"malhar", "babu", "rushi", "omkyaa"};
  ss.forEach((element) {
    print(element);
  });

  Set s10 = {0, true, "malhar"};
  print(s10);
  print(s10.runtimeType);
}
