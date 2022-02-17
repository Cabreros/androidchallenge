import 'package:flutter/material.dart';

class ResultModel extends ChangeNotifier {
  final List<String> _items = [];

  List<String> get items => _items;

  void addItem(String item) {
    _items.add(item);
    notifyListeners();
  }

  void clearItem() {
    _items.clear();
    notifyListeners();
  }
}
