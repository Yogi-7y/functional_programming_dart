// Sum all the numbers in the list

import '../utilities/utilities.dart';

const _arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

void main(List<String> args) {
  final _imperativeResult = _sumAllImperative(_arr);
  print(_imperativeResult); // 55

  final _sumAllReduceResult = _sumAllReduce(_arr);
  print(_sumAllReduceResult); // 55

  final _sumAllFoldResult = _sumAllFold(_arr);
  print(_sumAllFoldResult); // 55

  // Functional API
  final _result = reduce<int>(
    (accumulator, currentElement) => accumulator + currentElement,
    _arr,
    0,
  );

  print(_result); // 55
}

// Imperative approach
int _sumAllImperative(List<int> arr) {
  int _sum = 0;

  for (final item in arr) {
    _sum += item;
  }

  return _sum;
}

// Declarative approach

/// Reduce Implementation \
/// Reduces the [Iterable] to a single value. \
/// In step 1, accumulator is set to the first element of the [Iterable]. \
/// For every other steps, Accumulator is the result of the previous reduction. \
/// Input: [1, 2, 3, 4, 5] \
/// Step 1: Accumulator = 0 & currentElement = 1 | accumulator + currentElement = 1 \
/// Step 2: Accumulator = 1 & currentElement = 2 | accumulator + currentElement = 3 \
/// Step 3: Accumulator = 3 & currentElement = 3 | accumulator + currentElement = 6 \
/// Step 4: Accumulator = 6 & currentElement = 4 | accumulator + currentElement = 10 \
/// Step 5: Accumulator = 10 & currentElement = 5 | accumulator + currentElement = 15 \
int _sumAllReduce(List<int> arr) =>
    arr.reduce((accumulator, currentElement) => accumulator + currentElement);

/// Fold Implementation \
/// Fold is similar to reduce, but we can pass in the initial value of the accumulator. \
int _sumAllFold(List<int> arr) =>
    arr.fold(0, (accumulator, currentElement) => accumulator + currentElement);
