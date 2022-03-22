// ignore_for_file: unnecessary_type_check

import 'package:dartz/dartz.dart';

void main(List<String> args) {
  // Normal

  print(greet('Hello', 'Noah')); // Hello Noah
  print(greet('Bonjour', 'Charlotte')); // Bonjour Charlotte
  print(greet('Namaste', 'Rahul')); // Namaste Rahul
  print(greet('Hello', 'Liam')); // Hello Liam
  print(greet('Ciao', 'Isabella')); // Ciao Isabella
  print(greet('Ciao', 'Leonardo')); // Ciao Leonardo

  // Curried and Partial Application

  final _curriedGreet = curry2<String, String, String>(greet);

  final _hello = _curriedGreet('Hello');
  final _ciao = _curriedGreet('Ciao');
  final _namaste = _curriedGreet('Namaste');
  final _bonjour = _curriedGreet('Bonjour');

  print(_hello('Noah')); // Hello Noah
  print(_bonjour('Charlotte')); // Bonjour Charlotte
  print(_namaste('Rahul')); // Namaste Rahul
  print(_hello('Liam')); // Hello Liam
  print(_ciao('Isabella')); // Ciao Isabella
  print(_ciao('Leonardo')); // Ciao Leonardo

  // Demonstration
  print(_hello is Function); // true
  print(_hello); // Closure: (String) => String
}

String greet(String salutation, String name) => '$salutation $name';
