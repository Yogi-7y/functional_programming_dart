void totalFunctionVsPartialFunction() {
  final _doubleOne = doubler(1);
  final _doubleFive = doubler(5);

  assert(_doubleOne == 2);
  assert(_doubleFive == 10);

  final _doubleOnePartial = doubler2(1);
  final _doubleFivePartial = doubler2(5);

  assert(_doubleOnePartial == 2);
  assert(_doubleFivePartial == null);

  print('✅ totalFunctionVsPartialFunction - passed!');
}

/// Total Function \
/// Total function: A function that is declared for all the possible inputs \
/// This means for every possible input, you'll get a result.
int doubler(int value) => value * 2;

/// Partial Function \
/// Partial function: A function that is declared for a subset of the possible inputs. \
/// This means for some inputs, you'll get a result. For others, you'll get exception or no result.
int? doubler2(int value) {
  if (value == 1) return 2;
  if (value == 2) return 4;
  if (value == 3) return 6;
}
