/// A predicate function is a function that takes an argument and returns a boolean.
typedef PredicateFunction<T> = bool Function(T t);

typedef MapperFunction<T> = T Function(T t);

typedef ReducerFunction<T> = T Function(T accumulator, T currentElement);

/// Returns a new list of the elements that satisfy the predicate function. \
/// The elements are not removed from the original list. \
/// Time complexity: O(n) \
/// Space complexity: O(n) \
/// where n is the number of elements in the list. \
List<T> filter<T>(PredicateFunction<T> predicate, List<T> list) {
  final _result = <T>[];

  for (final item in list) {
    if (predicate(item)) _result.add(item);
  }

  return _result;
}

List<T> map<T>(MapperFunction<T> mapper, List<T> t) {
  final _result = <T>[];

  for (final item in t) {
    _result.add(mapper(item));
  }

  return _result;
}

/// Reduces a collection to a single value. \
T reduce<T>(ReducerFunction<T> reducer, List<T> list, T initialValue) {
  T _result = initialValue;
  for (final item in list) {
    _result = reducer(_result, item);
  }
  return _result;
}

/// Recursive implementation of the [map] function.
List<T> mapRecursive<T>(MapperFunction<T> mapper, List<T> list) {
  if (isEmpty(list)) return [];

  return [mapper(head(list)), ...map(mapper, tail(list))];
}

/// Returns the first element from the list. \
/// For instance, [head] applied on [1, 2, 3] will return 1. \
T head<T>(List<T> values) => values.first;

/// Returns all the elements from the list except the first.
/// For instance, [tail] applied on [1, 2, 3] will return [2, 3].
List<T> tail<T>(List<T> values) => values.sublist(1);

/// Returns the number of elements.
/// For instance, [length] applied on [1, 2, 3] will return 3.
int length<T>(List<T> values) => values.length;

/// Checks if the iterable is empty. \
/// For instance, [isEmpty] applied on [1, 2, 3] will return false. \
/// But, [isEmpty] applied on [] will return true.
bool isEmpty<T>(List<T> values) => values.isEmpty;
