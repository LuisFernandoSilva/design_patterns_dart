//classes concretas implementando a mesma interface.


import 'package:extra_design_patterns_dart/examples/creational/design_factory/shape.dart';


class Square implements Shape{
  @override 
  void draw(){
    print('um quadrado desenhado pelo metodo draw()');
  }

}