//classes concretas estendendo as classes Burger e ColdDrink

import 'package:extra_design_patterns_dart/examples/creational/design_builder/burger.dart';

class VegBurger extends Burger {
  @override
  double price() {
    return 30.0;
  }

  @override
  String name() {
    return "Hamburguer Vegetariano";
  }
}
