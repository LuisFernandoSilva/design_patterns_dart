//classe command que invoca a classe correta

import 'package:extra_design_patterns_dart/examples/behavioral/design_command/order.dart';

class Broker {
  List<Order> orderList = List<Order>();
  void takeOrder(Order order) {
    orderList.add(order);
  }

  void placeOrders() {
    for (Order order in orderList) {
      order.execute();
    }
    orderList.clear();
  }
}
