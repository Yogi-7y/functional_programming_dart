void referentialTransparency() {
  final _twoSquare = square(2); // 4
  final _fourSquare = square(4); // 16

  final _result = _twoSquare + _fourSquare + square(2) + square(3) + square(4);

  assert(_result == 49);
  print('✅ refrentialTransparency - passed!');
}

int square(int x) => x * x;
