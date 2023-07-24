void main(List<String> st) {
  requiredPositionalParameters(10, 20);
  optionalPositionalParameters(200, 109289);
  requiredNamedParameters(a: 78, b: 900);
}

void requiredPositionalParameters(int a, int b) => print('$a $b');
void optionalPositionalParameters([int a = 1201, int b = 190]) =>
    print('$a $b');
void requiredNamedParameters({required a, required b}) => print('$a $b');
