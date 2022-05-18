import '../utilities/utilities.dart';

const _arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

void main(List<String> args) {
  // Imperative approach
  final _result = <int>[];

  for (final element in _arr) {
    _result.add(element * 2);
  }

  print(_result); // [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]

  // Declarative approach: map method in Dart lists
  final _result2 = _arr.map((element) => element * 2).toList();
  print(_result2); // [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]

  // Declarative approach: Functional API
  final _doubles = map<int>(doubleIt, _arr);
  print(_doubles); // [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]
}

int doubleIt(int number) => number * 2;
