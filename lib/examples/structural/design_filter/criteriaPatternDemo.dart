import 'package:extra_design_patterns_dart/examples/structural/design_filter/andCriteria.dart';
import 'package:extra_design_patterns_dart/examples/structural/design_filter/criteria.dart';
import 'package:extra_design_patterns_dart/examples/structural/design_filter/criteriaFemale.dart';
import 'package:extra_design_patterns_dart/examples/structural/design_filter/criteriaMale.dart';
import 'package:extra_design_patterns_dart/examples/structural/design_filter/criteriaSingle.dart';
import 'package:extra_design_patterns_dart/examples/structural/design_filter/orCriteria.dart';
import 'package:extra_design_patterns_dart/examples/structural/design_filter/person.dart';

/**
 * O padrão de filter ou criteria de critérios é um padrão de design que permite aos desenvolvedores
 *  filtrar um conjunto de objetos usando diferentes critérios e encadeando-os de maneira dissociada 
 * por meio de operações lógicas. Esse tipo de padrão  combina vários critérios para obter critérios únicos.
 * >>Implementação 
 * é Definido um objeto Pessoa, interface Critérios e classes concretas implementando essa interface
 * para filtrar a lista de objetos Pessoa. CriteriaPatternDemo, nossa classe demo usa objetos 
 * Criteria para filtrar 
 * objetos List of Person com base em vários critérios e suas combinações.
 */

//use diferentes criterios e combinações para fazer a saida de dados das pessoas

void main(List<String> args) {
  
  List<Person> persons = List<Person>();
  persons.add(Person('Robert', 'Masculino', 'Solteiro'));
  persons.add(Person('John', 'Masculino', 'Casado'));
  persons.add(Person('Laura', 'Feminino', 'Casado'));
  persons.add(Person('Diana', 'Feminino', 'Solteiro'));
  persons.add(Person('Mike', 'Masculino', 'Solteiro'));
  persons.add(Person('Bobby', 'Masculino', 'Solteiro'));

  //cria os objetos a serem listado conforme o criterio
  Criteria male = CriteriaMale();
  Criteria female = CriteriaFemale();
  Criteria single = CriteriaSingle();
  Criteria singleMale = AndCriteria(single,male);
  Criteria singleOrFemale = OrCriteria(single,female);

  print('Masculinos: \n');
  printPersons(male.meetCriteria(persons));
  print('\nFemininos: ');
  printPersons(female.meetCriteria(persons));
  print('\nSolteiros Masculinos : \n');
  printPersons(singleMale.meetCriteria(persons));
  print('Solteiros ou femininos: \n');
  printPersons(singleOrFemale.meetCriteria(persons));  

  

}

void printPersons(List<Person> persons){
  for (Person person in persons) {
    print('Pessoa nome: ${person.getName()} , Genero: ${person.getGender()} , Estado Civil: ${person.getMaritalStatus()}');
    
  }
}