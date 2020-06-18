//Crie uma factory para gerar objetos das classes concretas com base nas informações fornecidas.

//crie classes de factory estendendo AbstractFactory
//para gerar objetos de classe concreta com base nas informações fornecidas.

import 'package:extra_design_patterns_dart/examples/creational/design_factory/circle.dart';
import 'package:extra_design_patterns_dart/examples/creational/design_factory/rectangle.dart';
import 'package:extra_design_patterns_dart/examples/creational/design_factory/shape.dart';
import 'package:extra_design_patterns_dart/examples/creational/design_factory/square.dart';

class ShapeFactory {
  //usa getShape para pegar o objeto do tipo shape

  Shape getShape(String shapeType) {
    if (shapeType == null) {
      return null;
    }
    if (_equalsIgnoreCase(shapeType, 'CIRCULO')) {
      return Circle();
    } else if (_equalsIgnoreCase(shapeType, 'RETANGULO')) {
      return Rectangle();
    } else if (_equalsIgnoreCase(shapeType, 'QUADRADO')) {
      return Square();
    }
    return null;
  }

  //metodo que substitui o do java para comparar as strings e converte para letras minusculas e retorna false ou true
  bool _equalsIgnoreCase(String a, String b) =>
      (a == null && b == null) ||
      (a != null && b != null && a.toLowerCase() == b.toLowerCase());
}
