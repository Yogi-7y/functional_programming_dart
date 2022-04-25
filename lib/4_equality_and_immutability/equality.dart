// // ignore_for_file:  prefer_const_constructors

// ignore_for_file: hash_and_equals, prefer_const_constructors

import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

void main(List<String> args) {
  print(1 == 1); // true
  print(10 == 01); // false
  // print(1 == 1.0); // true
  print(User(name: 'John', age: 18) == User(name: 'John', age: 18)); // false
  print([2, 3, 4] == [3, 4, 2]); // false
  print([1, 2, 3] == [1, 2, 3]); // false
  print(
    <String, String>{'name': 'John Doe'} ==
        <String, String>{'name': 'John Doe'},
  ); // false
  // print(1 is double); // false

  final _userOne = User(name: 'John', age: 18);
  final _userTwo = User(name: 'John', age: 18);

  // By Default, Dart checks for referential equality and hence these two objects when compared return false as they are store at different location in the memory.
  print(_userOne == _userTwo); // false

  const _constUserOne = User(name: 'John', age: 18);
  const _constUserTwo = User(name: 'John', age: 18);

  // The expression evaluates to true as the objects are stored at the same location in the memory.
  print(_constUserOne == _constUserTwo); // true

  /// [User] class
  final _userThree = User2(name: 'John', age: 18);
  final _userFour = User2(name: 'John', age: 18);

  /// The expression evaluates to true as the [User2] class overrides the [==] operator and supports value equality.
  print(_userThree == _userFour); // true

  // ------------------ Collections ------------------

  final _listOne = [1, 2, 3];
  final _listTwo = [1, 2, 3];

  final _mapOne = {'name': 'John', 'age': 18};
  final _mapTwo = {'name': 'John', 'age': 18};

  print(_listOne == _listTwo); // false
  print(_mapOne == _mapTwo); // false

  final _equality = DeepCollectionEquality();

  print(_equality.equals(_listOne, _listTwo)); // true
  print(_equality.equals(_mapOne, _mapTwo)); // true

  // Unordered version
  print(DeepCollectionEquality.unordered().equals(
    [1, 2, 4, 3],
    [1, 2, 3, 4],
  )); // true

  final _iListOne = IList.from([1, 2, 3]);
  final _iListTwo = IList.from([1, 2, 3]);

  /// [IList] overrides the == operator and supports value equality.
  print(_iListOne == _iListTwo); // true
}

class User {
  final String name;
  final int age;

  const User({required this.name, required this.age});
}

// Class with value equality support
@immutable
class User2 {
  final String name;
  final int age;

  const User2({required this.name, required this.age});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User2 && other.name == name && other.age == age;
  }

  @override
  int get hashCode => name.hashCode ^ age.hashCode;
}
