//classes concretas implementando a mesma interface.


import 'package:extra_design_patterns_dart/examples/creational/design_factory/shape.dart';

class Circle implements Shape{
  @override 
  void draw(){
    print('um circulo desenhado pelo metodo draw()');
  }

}