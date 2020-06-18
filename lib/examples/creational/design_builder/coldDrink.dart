//classe das bebidas geladas que implemta o item

import 'package:extra_design_patterns_dart/examples/creational/design_builder/bottle.dart';
import 'package:extra_design_patterns_dart/examples/creational/design_builder/item.dart';
import 'package:extra_design_patterns_dart/examples/creational/design_builder/packing.dart';

abstract class ColdDrink implements Item{

  @override 
  Packing packing(){
    return Bottle();
  }
  @override 
  double price();

}