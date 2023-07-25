void main(List<String> st) {
  requiredPositionalParameters(10, 20);
  optionalPositionalParameters(200, 109289);
  optionalPositionalParameters();
  optionalPositionalParameters(12);
  requiredNamedParameters(a: 78, b: 900);
  optionalNamedParameters(a: 56);
  optionalNamedParameters(b: 56);
  optionalNamedParameters();
  namedHybrid(a: 89);
  namedHybrid(a: 89, b: 1090);
  mixedParametersPositional(12, 32);
  mixedParametersPositionalNamed(c: 34, 56, 30);

  // optionalNamedParameters()
}

void requiredPositionalParameters(int a, int b) => print('$a $b');
void optionalPositionalParameters([int a = 1201, int b = 190]) =>
    print('$a $b');
void requiredNamedParameters({required int a, required int b}) =>
    print('$a $b');
void optionalNamedParameters({int b = 78, int a = 90}) => print('$a $b');
void namedHybrid({required int a, int b = 90}) => print('$a,$b');
void mixedParametersPositional(int a, int b, [int c = 098]) =>
    print("$a,$b,$c");
void mixedParametersPositionalNamed(int a, int b, {int c = 098}) =>
    print("$a,$b,$c");
