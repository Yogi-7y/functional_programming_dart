// Take a number and return the sum of all the numbers from 1 to that number.
// Example:
// sum(4) == 4 + 3 + 2 + 1 == 10

void main(List<String> args) {
  // Imperative approach
  final _iterativeSumResult = _iterativeSum(5);
  print(_iterativeSumResult); // 15

  // Declarative approach
  final _recursiveSumResult = _recursiveSum(5);
  print(_recursiveSumResult); // 15
}

/// Takes in a number and returns the sum of all numbers from 1 to that number. \
/// Iterative solution. (Imperative approach)
int _iterativeSum(int number) {
  int _result = 0;

  for (int i = 0; i <= number; i++) {
    _result += i;
  }

  return _result;
}

/// Takes in a number and returns the sum of all numbers from 1 to that number. \
/// Recursive solution. \
/// Time complexity: O(n) \
/// Space complexity: O(n) \
/// where n is the number of recursive calls. \
/// This is because the space complexity is the number of recursive calls. \
/// The space complexity is the number of recursive calls because the function
/// calls itself.
int _recursiveSum(int number) {
  if (number == 0) return 0;

  print(number);

  return number + _recursiveSum(number - 1);
}

// For input of 5, the function evaluates to:
// 5 + _recursiveSum(5 - 1) -> 5 + _recursiveSum(4)
// Now, the next function call is _recursiveSum(4) which evaluates to:
// 4 + _recursiveSum(4-1) -> 4 + _recursiveSum(3) and so on until the base case is reached. 
// Upon reaching the base condition, we have 5 + 4 + 3 + 2 + 1 lined up in a row.
