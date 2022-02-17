import 'package:androidchallenge/model/colours_model.dart';
import 'package:androidchallenge/services/data_service.dart';
import 'package:flutter/material.dart';

class ResultModel extends ChangeNotifier {
  List<Colour> _items = [];
  bool loading = false;

  List<Colour> get items => _items;

  getColourList(keyword) async {
    loading = true;
    _items = await DataService().getColours(keyword);
    loading = false;
    notifyListeners();
  }

  // void addItem(String item) {
  //   _items.add(item);
  //   notifyListeners();
  // }

  void clearItem() {
    _items.clear();
    notifyListeners();
  }
}
