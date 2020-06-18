//uma classe Meal com os objetos Item definidos.
//classe de pedidos

import 'package:extra_design_patterns_dart/examples/creational/design_builder/item.dart';

class Meal {
  List<Item> _items = List<Item>();

  void addItem(Item item) {
    _items.add(item);
  }

  double getCost() {
    double cost = 0.0;
    for (Item item in _items) {
      cost += item.price();
    }

    return cost;
  }

  void showItems() {
    for (Item item in _items) {
      print('Item: ${item.name()}\n'
          'Embalagem: ${item.packing().pack()}\n'
          'Preço: ${item.price()}\n');
    }
  }
}
