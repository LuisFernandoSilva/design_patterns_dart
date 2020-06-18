//classes abstratas implementando a interface do item, fornecendo funcionalidades padrão.
//classe hamburger



import 'package:extra_design_patterns_dart/examples/creational/design_builder/item.dart';
import 'package:extra_design_patterns_dart/examples/creational/design_builder/packing.dart';
import 'package:extra_design_patterns_dart/examples/creational/design_builder/wrapper.dart';

abstract class Burger implements Item{
  @override 
  Packing packing(){
    return Wrapper();
  }
  @override 
  double price();
}