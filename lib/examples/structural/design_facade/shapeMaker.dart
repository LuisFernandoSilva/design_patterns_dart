//classe facade

import 'package:extra_design_patterns_dart/examples/structural/design_facade/circle.dart';
import 'package:extra_design_patterns_dart/examples/structural/design_facade/rectangle.dart';
import 'package:extra_design_patterns_dart/examples/structural/design_facade/shape.dart';
import 'package:extra_design_patterns_dart/examples/structural/design_facade/square.dart';

class ShapeMaker {
  //objecto da interface shape
  Shape _circle;
  Shape _rectangle;
  Shape _square;
  //no construtor estancia uma classe concreta para cada objeto interface
  ShapeMaker() {
    _circle = Circle();
    _rectangle = Rectangle();
    _square = Square();
  }
  //funcoes que chamam a funcao draw de dentro das classe concretas
  void drawCircle() {
    _circle.draw();
  }

  void drawRectangle() {
    _rectangle.draw();
  }

  void drawSquare() {
    _square.draw();
  }
}
