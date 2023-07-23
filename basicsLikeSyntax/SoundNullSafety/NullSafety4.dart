// Implicit downcast is removed by null safety feature. (obj as String)
void main() {
  Object? obj = "My name is Malhar!";
  toStringFunc(obj as String);
}

void toStringFunc(String s) {
  print(s.toUpperCase());
}
