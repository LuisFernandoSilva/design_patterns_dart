import 'package:extra_design_patterns_dart/examples/behavioral/design_template/game.dart';

class FootBall extends Game{
  @override
  void endPlay() {
    print('O jogo de Futebol acabou!');
  }

  @override
  void initialize() {
    print('O jogo de Futebol iniciado!!');
  }

  @override
  void startPlay() {
    print('O jogo de Futebol começou!');
  }
  
}