//classe abstrata interface que faz uma instanciação da interface drawAPI

import 'package:extra_design_patterns_dart/examples/structural/design_bridge/drawAPI.dart';

abstract class Shape{
  DrawAPI drawAPI;

  Shape(DrawAPI drawAPI){this.drawAPI = drawAPI;}

  void draw();



}