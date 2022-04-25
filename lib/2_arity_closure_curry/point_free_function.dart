void main(List<String> args) {
  // Not point free
  final _result = _numbers.map(increment).toList();
  print(_result); // [2, 3, 4, 5, 6]

  // Point free
  final _result2 = _numbers.map(increment).toList();
  print(_result2); // [2, 3, 4, 5, 6]
}

int increment(int number) => number + 1;
const _numbers = [1, 2, 3, 4, 5];
