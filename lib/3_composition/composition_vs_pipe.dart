void main(List<String> args) {
  final _compose = compose(doubler, increment);
  final _pipe = pipe(doubler, increment);

  print(_compose(10)); // 22
  print(_pipe(10)); // 21
}

int increment(int value) => value + 1;

int doubler(int value) => value * 2;

/// Order of compositon is from right to left.
Function compose(Function f, Function g) => (x) => f(g(x));

/// Order of compositon is from left to right.
Function pipe(Function f, Function g) => (x) => g(f(x));
