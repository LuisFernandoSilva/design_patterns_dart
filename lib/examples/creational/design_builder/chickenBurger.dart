//classes concretas estendendo as classes Burger e ColdDrink

import 'package:extra_design_patterns_dart/examples/creational/design_builder/burger.dart';

class ChickenBurger extends Burger {
  @override
  double price() {
    return 40.4;
  }

  @override
  String name() {
    return "Hamburguer de Frango";
  }
}
