import 'dart:math';

void pureFunctionsAndSideEffects() {
  final _result = doubleValue(5);
  assert(_result == 10);

  greetImpure();
  name = 'John';
  greetImpure();

  greetPure('John');
  greetPure('Bob');

  print('✅ pureFunctionsAndSideEffects - passed!');
}

/// This is a pure function as for any input it always returns the corresponding output. \
/// It does not have side effects. \
/// Give 2, it always returns 4 \
/// Given 5, it always returns 10 \
/// No matter how many times you call it, it always returns the same value.
int doubleValue(int value) => value * 2;

/// This is not a pure function as it always returns a different output. \
DateTime getDateTime() => DateTime.now();

/// This is not a pure function as it always returns a different output. \
int getRandomNumber() => Random().nextInt(100);

String name = 'Bob';

String greetImpure() => 'Hello, $name';

String greetPure(String name) => 'Hello, $name';
