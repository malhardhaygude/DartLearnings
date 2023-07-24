void main(List<String> str) {
  var ls = ['malhar', 'aslam', 'omkar']
      .map((String s) => (s.toUpperCase()))
      .toList();
  print(ls);

  var ls1 = ['malhar', 'aslam', 'omkar', 'Rushi', 'Saurya', 'Babu']
      .map(stringToUpeerCase)
      .toList();
  print(ls1);
}

String stringToUpeerCase(String s) {
  return s.toUpperCase();
}
