import 'package:extra_design_patterns_dart/examples/behavioral/design_memento/careTaker.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_memento/originator.dart';

/**
 * O padrão Memento é usado para restaurar o estado de um objeto para um estado anterior.
 * Implementação
 * O padrão Memento usa três classes de ator. 
 * Memento contém o estado de um objeto a ser restaurado. O
 * Originador cria e armazena estados nos objetos Memento e o objeto Caretaker é responsável
 * por restaurar o estado do objeto no Memento. Criamos as classes Memento, Originator e CareTaker.
 * MementoPatternDemo, nossa classe de demonstração, usará objetos CareTaker e Originator para mostrar 
 * a restauração dos estados dos objetos.
 */

void main(List<String> args) {
  Originator originator = Originator();
  CareTaker careTaker = CareTaker();
  
  originator.setState('Status #1');
  originator.setState('Status #2');
  careTaker.add(originator.saveStateToMemento());

  originator.setState('Status #3');
  careTaker.add(originator.saveStateToMemento());

  originator.setState('Status #4');
  print('Correto status: ${originator.getState()}');

  originator.getStateFromMemento(careTaker.get(0));
  print('Primeiro status salvo: ${originator.getState()}');
  originator.getStateFromMemento(careTaker.get(1));
  print('Segundo status salvo: ${originator.getState()}');  
}