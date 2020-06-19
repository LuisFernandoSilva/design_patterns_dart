//classes concretas que implementao a interface drawAPI 

import 'package:extra_design_patterns_dart/examples/structural/design_bridge/drawAPI.dart';

class RedCircle implements DrawAPI{
  @override 
  void drawCircle(int radius, int x, int y){
    print('Desenhando um circulo de cor vermelha , radiano: $radius, x: $x, y:$y ' );
  }
}