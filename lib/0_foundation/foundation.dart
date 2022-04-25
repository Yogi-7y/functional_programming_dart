// Demonstrate imperative vs declarative programming by filtering out all the even numbers.

import 'package:collection/collection.dart';

const _numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
const _expectedResult = [2, 4, 6, 8, 10];

void filterEvensInImperativeStyle() {
  final _result = <int>[];

  for (final i in _numbers) {
    if (i.isEven) _result.add(i);
  }

  assert(
    const ListEquality<int>().equals(_result, _expectedResult),
    'Imperative approach - Expected: $_expectedResult, Actual: $_result',
  );
  print('✅ filterEvensInImperativeStyle - Passed');
}

void filterEvensInDeclarativeStyle() {
  final _result = _numbers.where((element) => element.isEven).toList();

  assert(
    const ListEquality<int>().equals(_result, _expectedResult),
    'Declarative approach - Expected: $_expectedResult, Actual: $_result',
  );

  print('✅ filterEvensInDeclarativeStyle - Passed');
}
