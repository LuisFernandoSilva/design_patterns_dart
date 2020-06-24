// Crie ma funcao para gerar objetos de classe concreta com base nas informações fornecidas.



import 'package:extra_design_patterns_dart/examples/structural/design_flyweight/circle.dart';
import 'package:extra_design_patterns_dart/examples/structural/design_flyweight/shape.dart';

class ShapeFactory {
 Map<String, Circle> circleMap = {};

  Shape getCircle(String color){
    if (circleMap.containsKey(color)) {
      return circleMap[color];
    }
    var newColor = Circle(color);
    circleMap[color] = newColor;
    if (newColor != null) {
      print('Criado um circulo de cor: $color');
    }
    return newColor;


  }
}