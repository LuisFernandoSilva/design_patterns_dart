//classe abstrata decorator que implementa shape interface

import 'package:extra_design_patterns_dart/examples/structural/design_decorator/shape.dart';

abstract class ShapeDecorator implements Shape{

  Shape decoratedShape;

  ShapeDecorator(Shape decoratedShape){
    this.decoratedShape = decoratedShape;
  }

  @override
  void draw(){
    decoratedShape.draw();
  }

}