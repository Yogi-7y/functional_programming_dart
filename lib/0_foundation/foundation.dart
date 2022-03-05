// Demonstrate imperative vs declarative programming by filtering out all the even numbers.

import 'package:collection/collection.dart';

const _numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
const _expectedResult = [2, 4, 6, 8, 10];

void filterEvensInImperativeStyle() {
  final _result = <int>[];

  for (int i in _numbers) {
    if (i % 2 == 0) {
      _result.add(i);
    }
  }

  assert(
    const ListEquality().equals(_result, _expectedResult),
    "Imperative approach - Expected: $_expectedResult, Actual: $_result",
  );
  print('Imperative Evens ✅');
}

void filterEvensInDeclarativeStyle() {
  final _result = _numbers.where((element) => element % 2 == 0).toList();

  assert(
    const ListEquality().equals(_result, _expectedResult),
    "Declarative approach - Expected: $_expectedResult, Actual: $_result",
  );

  print('Declarative Evens ✅');
}
