//Crie classes concretas implementando a interface Packing.
//classe embrulho

import 'package:extra_design_patterns_dart/examples/creational/design_builder/packing.dart';

class Wrapper implements Packing{
  @override 
  String pack(){
    return 'Embrulho';
  }

}