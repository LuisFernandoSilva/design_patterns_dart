import 'package:extra_design_patterns_dart/examples/behavioral/design_state/context.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_state/startState.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_state/stopState.dart';

/**
 * No padrão State, o comportamento de uma classe muda com base em seu estado.
 * criamos objetos que representam vários estados e um objeto de contexto cujo comportamento varia conforme
 * o objeto de estado muda.
 * >>Implementação Vamos criar uma interface State definindo uma ação e classes de estado concretas
 *  implementando a interface State. Contexto é uma classe que carrega um Estado.
 * StatePatternDemo, nossa classe demo, usará objetos de contexto e estado para demonstrar a 
 * mudança no comportamento do contexto com base no tipo de estado em que se encontra.
 */

void main(List<String> args) {
  Context context = new Context();

  StartState startState = new StartState();
  startState.doAction(context);
  print(context.getState().toString());

  StopState stopState = new StopState();
  stopState.doAction(context);
  print(context.getState().toString());
}
