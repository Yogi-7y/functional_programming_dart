const _camelCase = 'loremIpsumDolorSitAmet';
const _pascalCase = 'LoremIpsumDolorSitAmet';
const _snakeCase = 'lorem_ipsum_dolor_sit_amet';
const _kebabCase = 'lorem-ipsum-dolor-sit-amet';

void main(List<String> args) {
  // snake case to camel case

  final _snakeToCamel = composeN([
    joinWithoutSpace,
    capitalizeTail,
    splitWithUnderscore,
  ]);

  print(_snakeToCamel(_snakeCase) == _camelCase); // true

  // snake case to pascal case

  final _snakeToPascal = composeN([
    joinWithoutSpace,
    capitalizeWords,
    splitWithUnderscore,
  ]);

  print(_snakeToPascal(_snakeCase) == _pascalCase); // true

  // snake case to kebab case

  final _snakeToKebab = composeN([
    joinWithHyphen,
    splitWithUnderscore,
  ]);

  print(_snakeToKebab(_snakeCase) == _kebabCase); // true

  // camel case to snake case

  final _camelToSnake = composeN([
    joinWithUnderScore,
    lowerCaseWords,
    splitWords,
  ]);

  print(_camelToSnake(_camelCase) == _snakeCase); // true

  // camel case to pascal case

  final _camelToPascal = composeN([
    joinWithoutSpace,
    capitalizeWords,
    splitWords,
  ]);

  print(_camelToPascal(_camelCase) == _pascalCase); // true

  // camel case to kebab case

  final _camelToKebab = composeN([
    joinWithHyphen,
    lowerCaseWords,
    splitWords,
  ]);

  print(_camelToKebab(_camelCase) == _kebabCase); // true

  // pascal case to snake case

  final _pascalToSnake = composeN([
    joinWithUnderScore,
    lowerCaseWords,
    splitWords,
  ]);

  print(_pascalToSnake(_pascalCase) == _snakeCase); // true

  // pascal case to camel case

  final _pascalToCamel = composeN([
    joinWithoutSpace,
    capitalizeTail,
    splitWords,
  ]);

  print(_pascalToCamel(_pascalCase) == _camelCase); // true

  // pascal case to kebab case

  final _pascalToKebab = composeN([
    joinWithHyphen,
    lowerCaseWords,
    splitWords,
  ]);

  print(_pascalToKebab(_pascalCase) == _kebabCase); // true

  // kebab case to snake case

  final _kebabToSnake = composeN([
    joinWithUnderScore,
    lowerCaseWords,
    splitWithHyphen,
  ]);

  print(_kebabToSnake(_kebabCase) == _snakeCase); // true

  // kebab case to camel case

  final _kebabToCamel = composeN([
    joinWithoutSpace,
    capitalizeTail,
    splitWithHyphen,
  ]);

  print(_kebabToCamel(_kebabCase) == _camelCase); // true

  // kebab case to pascal case

  final _kebabToPascal = composeN([
    joinWithoutSpace,
    capitalizeWords,
    splitWithHyphen,
  ]);

  print(_kebabToPascal(_kebabCase) == _pascalCase); // true
}

/// Capitalizes all the elements of a list except the first one.
List<String> capitalizeTail(List<String> values) => [
      toLowerCase(head(values)),
      ...capitalizeWords(tail(values)),
    ];

/// Converts a list of words to a list of words with the first letter capitalized.
List<String> capitalizeWords(List<String> words) =>
    words.map(capitalizeWord).toList();

/// Converts a list of words to lower case.
List<String> lowerCaseWords(List<String> values) =>
    values.map(toLowerCase).toList();

/// Returns the first element of a list.
String head(List<String> values) => values.first;

/// Returns all the elements of a list except the first one.
List<String> tail(List<String> values) => values.sublist(1).toList();

/// Converts a string to lower case.
String toLowerCase(String value) => value.toLowerCase();

/// Converts a string to upper case.
String toUpperCase(String value) => value.toUpperCase();

/// Capitalizes the first letter of a string.
String capitalizeWord(String value) =>
    toUpperCase(value[0]) + value.substring(1);

String joinWithoutSpace(List<String> values) => values.join();
String joinWithHyphen(List<String> values) => values.join('-');
String joinWithUnderScore(List<String> values) => values.join('_');

List<String> splitWithUnderscore(String value) => value.split('_');
List<String> splitWithHyphen(String value) => value.split('-');

/// Splits word by capital letters.
List<String> splitWords(String value) {
  String _word = '';

  List<String> _words = [];

  for (int i = 0; i < value.length; i++) {
    final _char = value[i];

    if (_char == _char.toUpperCase()) {
      _words.add(_word);
      _word = '';
    }

    _word += _char;
  }

  _words.add(_word);

  _words.removeWhere((element) => element.isEmpty);

  return _words;
}

Function composeN(List<Function> fns) {
  final _reversed = fns.reversed.toList();

  return (x) {
    for (Function fn in _reversed) {
      x = fn(x);
    }
    return x;
  };
}
