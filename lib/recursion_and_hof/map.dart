import 'package:functional_programming_dart/utilities/utilities.dart';

const _arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

void main(List<String> args) {
  final _doubles = map<int>(doubleIt, _arr);
  print(_doubles); // [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]
}

int doubleIt(int number) => number * 2;
