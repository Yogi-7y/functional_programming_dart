import 'package:dartz/dartz.dart';

// Flatten: Returns a new collection by taking every element in the collection, and it's subcollection and putting everything into a new collection with single depth.
// Example: [1, 2, [3, 4], 5, [6, 7, [8, 9]]] => [1, 2, 3, 4, 5, 6, 7, 8, 9]

// flatMap: is a combination of map and flatten. It takes a function and applies it to every element in the collection, and it's subcollection. After mapping, it flattens the result.

final _arr = IList.from([
  1,
  2,
  IList.from([3, 4]),
  5,
  IList.from([6, 7, 8]),
  9
]);

const _normalArr = [
  1,
  2,
  [3, 4],
  5,
  [6, 7, 8],
  9
];

/// [_arr] is a nested list and lets assume we get such a list from an API \
/// But, we want to flatten it to a single list of integers. \

void main(List<String> args) {
  // IList from the dartz package
  final _result = _arr.flatMap<int>(
    (a) {
      if (a is IList<int>) return a;

      if (a is int) return IList.from([a]);

      return IList.from([]);
    },
  );

  print(_result);

  // Dart List

  final _result2 = _normalArr.expand<int>((a) {
    if (a is List<int>) return a;

    if (a is int) return [a];

    return [];
  }).toList();

  print(_result2);
}
