//classe concretas que implementam interface shape

import 'package:extra_design_patterns_dart/examples/structural/design_decorator/shape.dart';

class Rectangle implements Shape{
  @override
  void draw() {
    print('Formato de retangulo');
  }

}