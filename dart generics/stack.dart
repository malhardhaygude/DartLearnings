class Stack<T> {
  late final List<T> _stack = [];

  T get peak => _stack.last;
  int get size => _stack.length;

  bool get canPop => _stack.isNotEmpty;
  T pop() {
    final T last = _stack.last;
    _stack.removeLast();
    return last;
  }

  void push(T value) {
    _stack.add(value);
  }
}

void main() {
  Stack s = Stack();
  s.push(10);
  s.push("maljar");
  s.push(30);
  print("${s.peak}");

  Stack<int> stackInt = Stack();
  Stack<double> stackDouble = Stack();
  Stack<String> stackString = Stack();
  stackString.push("Malhar");
  stackString.push("Pushpanjali");
  stackString.push("Saurabh");
  stackString.push("Rushi");
  stackString.push("Babu");
  stackString.push("Malhar");
  stackString.push("Malhar");
  print("${stackString.peak}");
  stackString.pop();
  stackString.pop();
  stackString.pop();
  print("${stackString.peak}");
}
