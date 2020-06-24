//classe concreta que implementa a interface

import 'package:extra_design_patterns_dart/examples/structural/design_facade/shape.dart';

class Square implements Shape{
  @override
  void draw() {
    print('Quadrado desenhado, metodo draw da interface usado');
  }

}