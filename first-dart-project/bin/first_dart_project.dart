import 'package:first_dart_project/first_dart_project.dart'
    as first_dart_project;
import 'package:first_dart_project/src/calculate.dart';

void main(List<String> arguments) {
  // try {
  //   print('Hello world: ${first_dart_project.calculate()}! \n'
  //       'Args sum: ${arguments.fold<int>(0, (prevValue, element) => prevValue + int.parse(element))}');
  // } catch (e) {
  //   print('atleast one arg is not integer!!');
  // }

  // Dart Constant
  // with Final and const keywords is compile time constant final can be set only once
  const a = 10;
  final b = 20;
  const name = 'malhar';
  // name = 'omkyaa';  line throws error
  print(a);
  print(b);
  print(name);

  print("***************************************************************");

  // Dart Numbers  [int double]

  int num = 8798;
  double num2 = 9.78;
  print('${(num)}, ${(num2)}');

  int r = 5;
  double pi = 3.14;
  double res = 4 * pi * r * r;
  print("The area of sphere = ${(res)}");

  // int.parse() numeric-string to number
  var x = int.parse('29');
  var y = double.parse('22.90889898');
  print(x);
  print(y);
  print(x.runtimeType);
  print(y.runtimeType);

  print(x.hashCode);
  print(x.isFinite);
  print(x.isInfinite);
  print(x.isNegative);
  print(x.isNaN);
  print(x.sign);
  print(x.isEven);
  print(x.isOdd);
  print(y.truncate());
  print(y.toString());
  print(20.remainder(3));
  print(3.compareTo(3));
  print("***************************************************************");

  // sTRING

  String str1 = 'this is an example of a single-line string';
  String str2 = "this is an example of a double-quotes multiline line string";
  String str3 = """This is a multiline           line   
string using the Triple-Quotes             """;

  var aa = 10;
  var bb = 20;

  print("The string is ${str1} and var is ${aa}");
  print(str2);
  print(str3);

  // We can add expression using the ${expression}.
  print("The sum is  = ${aa + bb}");
  print(str3.length);
  print(str3.isEmpty);
  print(str3.toLowerCase());
  print(str3.toUpperCase());
  print(str3.trim());
  print(str3.replaceAll("is", "Is"));
  print(str3.split(" "));
  print(str3.substring(1, 4));
  print("***************************************************************");

  // Dart Lists....
  print("Example - Remove Element in the given Set");
  var names = <String>{"Peter", "John", "Ricky", "Devansh", "Finch"};

  names.forEach((value) {
    print('Value:  ${value}');
  });

  int s = 24, t = 4;
  print("Add - " + calculateAdd(s, t).toString());
  print("Subtract - " + calculateSub(s, t).toString());
  print("Multiply - " + calculateMul(s, t).toString());
  print("Divide - " + calculateDiv(s, t).toString());
}
