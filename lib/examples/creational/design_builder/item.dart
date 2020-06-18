//Crie um item de interface representando item de comida e embalagem.

import 'package:extra_design_patterns_dart/examples/creational/design_builder/packing.dart';

abstract class Item{
  String name();
  Packing packing();
  double price();
}