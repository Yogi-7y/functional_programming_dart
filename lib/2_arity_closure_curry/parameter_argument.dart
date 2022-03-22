// Parameter vs Argument

void main(List<String> args) {
  // 1 and 2 are the arguments of the function.
  final _result = add(1, 2);
  print(_result); // 3
}

/// The parameter is a part of the function declaration. \
/// The argument is a part of the function call.
/// It is a value that is passed to the function.
/// [numberOne] and [numberTwo] are parameters.
int add(int numberOne, int numberTwo) => numberOne + numberTwo;
