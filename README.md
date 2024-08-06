# search_package

A Dart package providing various search algorithms including Binary Search, Linear Search, and Jump Search. This package is designed to help developers easily integrate common search algorithms into their Dart applications.

## Features

- **Linear Search**: A simple search algorithm that checks each element in the list until the target is found or the list ends.
- **Binary Search**: An efficient search algorithm that works on sorted lists by repeatedly dividing the search interval in half.
- **Jump Search**: A search algorithm for sorted lists that jumps ahead by fixed steps to find the target.

## Getting Started

To use this package, add `search_package` as a dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  search_package: ^0.0.1
```

Run ```dart pub get``` to install the package.

## Usage
Here are some examples of how to use the search algorithms provided by this package:
```import 'package:search_package/search_package.dart';

void main() {
  // Example list of integers
  List<int> intList = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];
  // Example list of strings
  List<String> stringList = ['apple', 'banana', 'cherry', 'date', 'elderberry'];

  // Example target values
  int intTarget = 50;
  String stringTarget = 'cherry';

  // Using Linear Search
  print('Linear Search:');
  int intIndex = SearchAlgorithms.linearSearch(intList, intTarget);
  print('Index of $intTarget in intList: $intIndex');

  int stringIndex = SearchAlgorithms.linearSearch(stringList, stringTarget);
  print('Index of $stringTarget in stringList: $stringIndex');

  // Using Binary Search (Note: list must be sorted)
  print('\nBinary Search:');
  intIndex = SearchAlgorithms.binarySearch(intList, intTarget);
  print('Index of $intTarget in intList: $intIndex');

  stringIndex = SearchAlgorithms.binarySearch(stringList, stringTarget);
  print('Index of $stringTarget in stringList: $stringIndex');

  // Using Jump Search (Note: list must be sorted)
  print('\nJump Search:');
  intIndex = SearchAlgorithms.jumpSearch(intList, intTarget);
  print('Index of $intTarget in intList: $intIndex');

  stringIndex = SearchAlgorithms.jumpSearch(stringList, stringTarget);
  print('Index of $stringTarget in stringList: $stringIndex');
}```