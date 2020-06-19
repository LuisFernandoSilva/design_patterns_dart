//classes concretas que implementao a interface drawAPI

import 'package:extra_design_patterns_dart/examples/structural/design_bridge/drawAPI.dart';

class GreenCircle implements DrawAPI {
  @override
  void drawCircle(int radius, int x, int y) {
    print('Desenhando um circulo de cor verde , radiano: $radius, x: $x, y:$y');
  }
}
