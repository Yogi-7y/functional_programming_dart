import 'package:dartz/dartz.dart';

void main(List<String> args) {
  final _shout = compose(exclaim, toUpper);
  print(_shout('Ouch! that hurts')); // "OUCH! THAT HURTS!"

  // Dartz
  final _shout2 = composeF<String, String, String>(exclaim, toUpper);
  print(_shout2('Ouch! that hurts')); // "OUCH! THAT HURTS!"
}

String toUpper(String value) => value.toUpperCase();
String exclaim(String value) => '$value!';

Function compose(Function f, Function g) => (x) => f(g(x));
