import 'package:extra_design_patterns_dart/examples/behavioral/design_iterator/iterator.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_iterator/nameRepository.dart';

/**
 *  Esse padrão é usado para obter uma maneira de acessar os elementos de um objeto de coleção
 *  de maneira sequencial, sem a necessidade de conhecer sua representação subjacente.
 * >>Implementação
 * Com uma interface Iterator que narra o método de navegação e uma interface Container 
 * que executa o iterador novamente.
 * As classes concretas que implementam a interface Container serão responsáveis por 
 * implementar a interface Iterator e usá-la IteratorPatternDemo, 
 * nossa classe demo usará NamesRepository, uma implementação de classe concreta 
 * para imprimir um Names armazenado como uma coleção em NamesRepository.
*/

void main(List<String> args) {
  NameRepository namesRepository = NameRepository();

  for (IteratorPattern iter = namesRepository.getIterator(); iter.hasNext();) {
    String name = iter.next();
    print('Nome: $name');
  }
}
