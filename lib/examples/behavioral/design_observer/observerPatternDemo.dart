import 'package:extra_design_patterns_dart/examples/behavioral/design_observer/binaryObserver.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_observer/hexaObserver.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_observer/octalObserver.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_observer/subject.dart';

/**
 * O padrão observador é usado quando há um relacionamento entre muitos objetos, se um objeto for modificado,
 *  seus objetos dependentes devem ser notificados automaticamente.
 * >>Implementação
 * O padrão observador usa três classes de ator. Assunto, Observador e Cliente. 
 * Assunto é um objeto com métodos para anexar e desanexar observadores a um objeto cliente.
 * Criamos uma classe abstrata Observer e uma classe concreta Subject que está estendendo a classe Observer.
 * ObserverPatternDemo, nossa classe demo, usará Subject e objeto de classe concreto para mostrar o 
 * padrão do observador em ação.
 */

void main(List<String> args) {
  Subject subject = new Subject();

  HexaObserver(subject);
  OctalObserver(subject);
  BinaryObserver(subject);

  print('Primeiro estado mudado: 15');
  subject.setState(15);
  print('Segundo estado mudado: 10');
  subject.setState(10);
}
