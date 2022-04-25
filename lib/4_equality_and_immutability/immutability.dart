// ignore_for_file: unused_local_variable, prefer_const_declarations

import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

void main(List<String> args) {
  // ----------------- Variables -----------------

  // Mutuable: Something that can be changed.
  var a = 10;
  a = 20;

  // Immutable: Something that cannot be changed.
  final b = 10;
  // b = 20; // Error: final(immutable) variable cannot be reassigned.

  // ------------------- Classes -------------------

  const _user = User(name: 'John', age: 18);
  print(_user); // User(name: 'John', age: 18)
  final _newUser = _user.copyWith(age: 20);
  print(_newUser); // User(name: 'John', age: 20)

  // -----------------Lists, Maps etc. -----------------

  final _finalList = [1, 2, 3];
  const _constList = [1, 2, 3];

  // _finalList = [5, 6, 7]; // Error: final list cannot be reassigned.
  // _constList = [5, 6, 7]; // Error: const list cannot be reassigned.

  _finalList.add(4);
  print(_finalList); // [1, 2, 3, 4]

  // _constList.add(4); // Error: Unsupported operation: Cannot modify an unmodifiable list.

  final _list = List<int>.unmodifiable(
    <int>[1, 2, 3],
  );
  // _list.add(4); // Error: Unsupported operation: Cannot modify an unmodifiable list.

  final _map = Map<String, int>.unmodifiable(
    <String, int>{'a': 1, 'b': 2, 'c': 3},
  );
  // _map['d'] = 4; // Error: Unsupported operation: Cannot modify an unmodifiable map.

  final list = IList.from(<int>[1, 2, 3]);

  final _newList = list.appendElement(4);
  print(_newList); // ilist[1, 2, 3, 4]

  final _newList2 = list.prependElement(0);
  print(_newList2); // ilist[0, 1, 2, 3]

  final _newList3 = list.plus(IList.from(<int>[10, 11, 12]));
  print(_newList3); // ilist[1, 2, 3, 10, 11, 12]

  // Use toList method get a new dart list from the ilist.
  final _normalList = _newList.toList();
  print(_normalList.runtimeType); // List<int>
  print(_normalList); // [1, 2, 3, 4]
}

@immutable
class User {
  final String name;
  final int age;

  const User({required this.name, required this.age});

  User copyWith({
    String? name,
    int? age,
  }) =>
      User(
        name: name ?? this.name,
        age: age ?? this.age,
      );

  @override
  String toString() => 'User(name: $name, age: $age)';
}
