//classes concretas estendendo as classes Burger e ColdDrink

import 'package:extra_design_patterns_dart/examples/creational/design_builder/coldDrink.dart';

class Pepsi extends ColdDrink {
  @override
  double price() {
    return 4.5;
  }

  @override
  String name() {
    return "Pepsi";
  }
}
