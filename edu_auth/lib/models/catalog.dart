import 'package:flutter/material.dart';

class CatalogModel {
  List<String> itemNames = [
    'Code Smell',
    'Control Flow',
    'Interpreter',
    'Recursion',
    'Sprint',
    'Heisenbug',
    'Spaghetti',
    'Hydra Code',
    'Off-By-One',
    'Scope',
    'Callback',
    'Closure',
    'Automata',
    'Bit Shift',
    'Currying',
  ];

  Item getItemById(int id) {
    return Item(id, itemNames[id % itemNames.length]);
  }

  Item getItemByPostion(int pos) {
    return getItemById(pos);
  }
}

@immutable
class Item {
  final String itemName;
  final int id;
  final int price = 42;
  final Color color;

  Item(this.id, this.itemName)
      : color =
            Colors.primaries[id % Colors.primaries.length]; // Add color to item

  @override
  int get hashCode => id;

  @override
  bool operator ==(Object other) => other is Item && other.id == id;
}
