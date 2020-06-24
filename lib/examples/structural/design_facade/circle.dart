//classe concreta que implementa a interface

import 'package:extra_design_patterns_dart/examples/structural/design_facade/shape.dart';

class Circle implements Shape{
  @override
  void draw() {
    print('Circulo desenhado, metodo draw da interface usado');
  }

}