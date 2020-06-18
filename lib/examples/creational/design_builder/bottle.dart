//Crie classes concretas implementando a interface Packing.
//classe garrafa

import 'package:extra_design_patterns_dart/examples/creational/design_builder/packing.dart';

class Bottle implements Packing{
  @override 
  String pack(){
    return 'Garrafa';
  }

}