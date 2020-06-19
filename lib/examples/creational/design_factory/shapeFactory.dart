//Crie uma factory para gerar objetos das classes concretas com base nas informações fornecidas.

//crie classes de factory estendendo AbstractFactory
//para gerar objetos de classe concreta com base nas informações fornecidas.

import 'package:extra_design_patterns_dart/examples/creational/design_factory/circle.dart';
import 'package:extra_design_patterns_dart/examples/creational/design_factory/rectangle.dart';
import 'package:extra_design_patterns_dart/examples/creational/design_factory/shape.dart';
import 'package:extra_design_patterns_dart/examples/creational/design_factory/square.dart';
import 'package:extra_design_patterns_dart/examples/utils.dart';

class ShapeFactory {
  //usa getShape para pegar o objeto do tipo shape
  Utils utils = Utils();
  Shape getShape(String shapeType) {
    if (shapeType == null) {
      return null;
    }
    if (utils.equalsIgnoreCase(shapeType, 'CIRCULO')) {
      return Circle();
    } else if (utils.equalsIgnoreCase(shapeType, 'RETANGULO')) {
      return Rectangle();
    } else if (utils.equalsIgnoreCase(shapeType, 'QUADRADO')) {
      return Square();
    }
    return null;
  }
}
