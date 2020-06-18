//Crie classes de fábrica estendendo
//AbstractFactory para gerar objetos de classe concreta com base nas informações fornecidas.

import 'package:extra_design_patterns_dart/examples/creational/abstract_factory/abstractFactory.dart';
import 'package:extra_design_patterns_dart/examples/creational/abstract_factory/roundedRectangle.dart';
import 'package:extra_design_patterns_dart/examples/creational/abstract_factory/roundedSquare.dart';
import 'package:extra_design_patterns_dart/examples/creational/abstract_factory/shape.dart';

class RoundedShapeFactory extends AbstractFactory {
  @override
  Shape getShape(String shapeType) {
    if (_equalsIgnoreCase(shapeType, "RETANGULO")) {
      return RoundedRectangle();
    } else if (_equalsIgnoreCase(shapeType, "QUADRADO")) {
      return RoundedSquare();
    }
    return null;
  }

  //metodo que substitui o do java para comparar as strings e converte para letras minusculas e retorna false ou true
  bool _equalsIgnoreCase(String a, String b) =>
      (a == null && b == null) ||
      (a != null && b != null && a.toLowerCase() == b.toLowerCase());
}
