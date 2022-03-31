// import 'package:edu_auth/Screens/ShopHome/catalog.dart';
import 'package:edu_auth/models/catalog.dart';
import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  late CatalogModel _catalog;
  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
    notifyListeners();
  }

  //List item
  List<Item> get items =>
      _itemIds.map((id) => _catalog.getItemById(id)).toList();
  void add(Item item) {
    _itemIds.add(item.id);
    notifyListeners();
  }

  void remove(Item item) {
    _itemIds.remove(item.id);
    notifyListeners();
  }

  int get totalPrice {
    return items.fold(0, (total, curent) => total + curent.price);
  }
}
