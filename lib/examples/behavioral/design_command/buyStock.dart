//classe concreta que implementa order

import 'package:extra_design_patterns_dart/examples/behavioral/design_command/order.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_command/stock.dart';

class BuyStock implements Order {
  Stock abcStock;

  BuyStock(Stock abcStock){
    this.abcStock = abcStock;
  }

  @override
  void execute() {
    abcStock.buy();
  }
  
}