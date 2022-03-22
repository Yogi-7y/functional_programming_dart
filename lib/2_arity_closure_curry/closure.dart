typedef IntCallback = int Function(int number);

void main(List<String> args) {
  final _firstFnResult = _firstFunction();
  _firstFnResult();

  final _increment = add(1);
  print(_increment(2)); // 3
}

Function _firstFunction() {
  final _someValue = 'First function scope';

  void _secondFunction() {
    print(_someValue);
  }

  return _secondFunction;
}

IntCallback add(int a) {
  return (int b) {
    return a + b;
  };
}
