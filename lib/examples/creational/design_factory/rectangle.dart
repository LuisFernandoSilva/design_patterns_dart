//classes concretas implementando a mesma interface.


import 'package:extra_design_patterns_dart/examples/creational/design_factory/shape.dart';

class Rectangle implements Shape{
  @override 
  void draw(){
    print('um triangulo desenhado pelo metodo draw()');
  }

}