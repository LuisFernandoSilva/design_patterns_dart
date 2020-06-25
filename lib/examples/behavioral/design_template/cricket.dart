import 'package:extra_design_patterns_dart/examples/behavioral/design_template/game.dart';

class Cricket extends Game{
  @override
  void endPlay() {
    print('O jogo de criquete acabou!');
  }

  @override
  void initialize() {
    print('O jogo de criquete iniciado!!');
  }

  @override
  void startPlay() {
    print('O jogo de criquete começou!');
  }
  
}