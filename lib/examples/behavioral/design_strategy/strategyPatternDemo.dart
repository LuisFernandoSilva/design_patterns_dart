import 'package:extra_design_patterns_dart/examples/behavioral/design_strategy/context.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_strategy/operationAdd.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_strategy/operationMult.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_strategy/operationSub.dart';

/**
 * No padrão de estratégia, um comportamento de classe ou seu algoritmo pode ser alterado em tempo de execução.
 * criamos objetos que representam várias estratégias e um objeto de contexto cujo comportamento
 * varia conforme seu objeto de estratégia. O objeto de estratégia altera o algoritmo de execução do 
 * objeto de contexto.
 * >>Implementação
 * Vamos criar uma interface de estratégia definindo uma ação e classes de estratégia concretas 
 * implementando a interface de estratégia. Contexto é uma classe que usa uma estratégia.
 * StrategyPatternDemo, nossa classe demo, usará objetos de contexto e estratégia para demonstrar
 * mudanças no comportamento do contexto com base na estratégia que implanta ou usa.
 */

void main(List<String> args) {
  Context context = Context(OperationAdd());

  print('Soma de 10 + 5 = ${context.executeStrategy(10, 5)}');

  context = Context(OperationSub());
  print('Subtração de 10 - 5 = ${context.executeStrategy(10, 5)}');

  context = Context(OperationMult());
  print('Multiplicaçãode 10 * 5 = ${context.executeStrategy(10, 5)}');
}
