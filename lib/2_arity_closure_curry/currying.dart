import 'package:dartz/dartz.dart';

void main(List<String> args) {
  // Non curried
  print(greet('Hello', 'Noah')); // Hello Noah

  // Curried
  print(curriedGreet('Hello')('Noah')); // Hello Noah

  // Curries (dartz)

  final _curriedGreet2 = curry2<String, String, String>(greet);
  print(_curriedGreet2('Hello')('Noah')); // Hello Noah
}

String greet(String salutation, String name) => '$salutation $name';

typedef StringCallback = String Function(String name);

StringCallback curriedGreet(String salutation) {
  return (String name) {
    return '$salutation $name';
  };
}
