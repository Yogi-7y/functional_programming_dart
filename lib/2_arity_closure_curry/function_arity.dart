// Arity.
// The arity of a function is defined by the number of arguments the function takes.

// ignore_for_file: use_is_even_rather_than_modulo

/// The arity of [increment] is 1.
/// Function taking a single argument is known as a unary function.
int increment(int number) => number + 1;

/// The arity of [add] is 2.
/// Function taking two arguments is known as a binary function.
int add(int numberOne, int numberTwo) => numberOne + numberTwo;

/// The arity of [now] is 0.
/// Function taking no arguments is known as a nullary function.
DateTime now() => DateTime.now();

/// The arity of [isOdd] is 1, hence it is a unary function.
/// [isOdd] is also a predicate function as it returns a [bool].
/// A predicate function is a function that returns a boolean value.
bool isOdd(int number) => number % 2 == 1;
