//classe concreta que herda de shape

import 'package:extra_design_patterns_dart/examples/structural/design_bridge/drawAPI.dart';
import 'package:extra_design_patterns_dart/examples/structural/design_bridge/shape.dart';

class Circle extends Shape {
  int _x, _y, _radius;
  //no metodo concreto recebe a ponte interface e desenha um circulo conforme especificado manda
  //pro shape os dados do circulo que ira subscrever ele no metodo draw
  Circle(int x, int y, int radius, DrawAPI drawAPI) : super(drawAPI) {
    _x = x;
    _y = y;
    _radius = radius;
  }

  @override
  void draw() {
    drawAPI.drawCircle(_radius, _x, _y);
  }
}
