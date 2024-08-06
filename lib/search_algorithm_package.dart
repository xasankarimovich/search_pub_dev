import 'dart:core';
import 'dart:math';

class SearchAlgorithms {
  static int linearSearch(List<dynamic> list, dynamic target) {
    var stopwatch = Stopwatch()..start();
    for (int i = 0; i < list.length; i++) {
      if (list[i] == target) {
        stopwatch.stop();
        print(
            'Linear Search time: ${stopwatch.elapsedMicroseconds} microseconds');
        return i;
      }
    }
    stopwatch.stop();
    print('Linear Search time: ${stopwatch.elapsedMicroseconds} microseconds');
    return -1;
  }

  static int binarySearch(List<dynamic> list, dynamic target) {
    var stopwatch = Stopwatch()..start();
    int left = 0;
    int right = list.length - 1;

    while (left <= right) {
      int middle = left + (right - left) ~/ 2;
      if (list[middle] == target) {
        stopwatch.stop();
        print(
            'Binary Search time: ${stopwatch.elapsedMicroseconds} microseconds');
        return middle;
      } else if (list[middle] < target) {
        left = middle + 1;
      } else {
        right = middle - 1;
      }
    }
    stopwatch.stop();
    print('Binary Search time: ${stopwatch.elapsedMicroseconds} microseconds');
    return -1;
  }

  static int jumpSearch(List<dynamic> list, dynamic target) {
    var stopwatch = Stopwatch()..start();
    int length = list.length;
    int step = sqrt(length).toInt();
    int prev = 0;

    while (list[min(step, length) - 1] < target) {
      prev = step;
      step += sqrt(length).toInt();
      if (prev >= length) {
        stopwatch.stop();
        print(
            'Jump Search time: ${stopwatch.elapsedMicroseconds} microseconds');
        return -1;
      }
    }

    while (list[prev] < target) {
      prev++;
      if (prev == min(step, length)) {
        stopwatch.stop();
        print(
            'Jump Search time: ${stopwatch.elapsedMicroseconds} microseconds');
        return -1;
      }
    }

    if (list[prev] == target) {
      stopwatch.stop();
      print('Jump Search time: ${stopwatch.elapsedMicroseconds} microseconds');
      return prev;
    }

    stopwatch.stop();
    print('Jump Search time: ${stopwatch.elapsedMicroseconds} microseconds');
    return -1;
  }
}
