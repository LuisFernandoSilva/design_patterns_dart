//classe concreta decorator que extend do shapeDecorator

import 'package:extra_design_patterns_dart/examples/structural/design_decorator/shape.dart';
import 'package:extra_design_patterns_dart/examples/structural/design_decorator/shapeDecorator.dart';

class RedShapeDecorator extends ShapeDecorator{
  RedShapeDecorator(Shape decoratedShape) : super(decoratedShape);
  
  @override
  void draw(){
    decoratedShape.draw();
    setRedBorder(decoratedShape);
    
  }

  void setRedBorder(Shape decoratedShape){
    print('Cor da borda vermelha');
  }


}