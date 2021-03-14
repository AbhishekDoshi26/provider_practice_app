import 'dart:math';

import 'package:flutter/material.dart';

class Functionality extends ChangeNotifier {
  int count = 0;
  void increment() {
    count++;
    notifyListeners();
  }

  void decrement() {
    if (count > 0) count--;
    notifyListeners();
  }

  void random() {
    count = Random().nextInt(50);
    notifyListeners();
  }

  void reload() {
    count = 0;
    notifyListeners();
  }
}
