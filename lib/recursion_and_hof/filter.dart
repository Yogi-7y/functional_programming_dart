// ignore_for_file: use_is_even_rather_than_modulo

import '../utilities/utilities.dart';

const _arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

void main(List<String> args) {
  // Imperative approach

  final _result = <int>[];

  for (final element in _arr) {
    if (element.isEven) {
      _result.add(element);
    }
  }

  print(_result); // [2, 4, 6, 8, 10]

  // Declarative approach

  final _evens = filter<int>(isEven, _arr);
  print(_evens); // [2, 4, 6, 8, 10]

  final _odds = filter<int>(isOdd, _arr);
  print(_odds); // [1, 3, 5, 7, 9]
}

bool isEven(int number) => number % 2 == 0;
bool isOdd(int number) => !isEven(number);
