// classe MealBuilder, a classe real do construtor responsável pela criação dos objetos Meal.

import 'package:extra_design_patterns_dart/examples/creational/design_builder/chickenBurger.dart';
import 'package:extra_design_patterns_dart/examples/creational/design_builder/coke.dart';
import 'package:extra_design_patterns_dart/examples/creational/design_builder/meal.dart';
import 'package:extra_design_patterns_dart/examples/creational/design_builder/pepsi.dart';
import 'package:extra_design_patterns_dart/examples/creational/design_builder/vegBurger.dart';

class MealBuilder {
  Meal prepareVegMeal() {
    Meal meal = Meal();
    meal.addItem(VegBurger());
    meal.addItem(Coke());
    return meal;
  }

  Meal prepareNonVegMeal() {
    Meal meal = Meal();
    meal.addItem(ChickenBurger());
    meal.addItem(Pepsi());
    return meal;
  }
}
