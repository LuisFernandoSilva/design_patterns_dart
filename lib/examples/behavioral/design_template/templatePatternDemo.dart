import 'package:extra_design_patterns_dart/examples/behavioral/design_template/cricket.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_template/football.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_template/game.dart';

/**
 * No padrão de template, uma classe abstrata expõe formas definidas e modelos para executar seus métodos.
 * Suas subclasses podem substituir a implementação do método conforme a necessidade, 
 * mas a chamada deve ser da mesma maneira definida por uma classe abstrata. 
 * >>Implementação
 * Em uma classe abstrata de game que define operações com um método de template definido como final,
 * para que não possa ser substituído. Críquete e futebol são classes concretas que estendem o game e 
 * substituem seus métodos.TemplatePatternDemo, nossa classe de demonstração, usará o Game para
 * demonstrar o uso do padrão de modelo.
 */

void main(List<String> args) {
  Game game = Cricket();
  game.play();
  print('');
  game = FootBall();
  game.play();
}
