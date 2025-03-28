import 'package:flutter/material.dart';
import '../models/grocery_item.dart';

class GroceryProvider with ChangeNotifier {
  final List<GroceryItem> _items = [];

  List<GroceryItem> get items => _items;

  void addItem(String name) {
    if (name.trim().isEmpty) return;
    _items.add(GroceryItem(name.trim()));
    notifyListeners();
  }

  void removeItem(GroceryItem item) {
    _items.remove(item);
    notifyListeners();
  }
}
