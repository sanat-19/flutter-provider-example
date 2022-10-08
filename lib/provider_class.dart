import 'package:flutter/cupertino.dart';

class ProviderClass extends ChangeNotifier {
  int _count = 0;
  int get count => _count;

  void incrementCount() {
    _count++;
    notifyListeners();
  }

  void decrementCount() {
    _count--;
    notifyListeners();
  }
}
