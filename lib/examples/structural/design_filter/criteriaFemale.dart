//classe concreta que implementa a lista interface de criterios

import 'package:extra_design_patterns_dart/examples/structural/design_filter/criteria.dart';
import 'package:extra_design_patterns_dart/examples/structural/design_filter/person.dart';
import 'package:extra_design_patterns_dart/examples/utils.dart';

class CriteriaFemale implements Criteria {
  Utils util = Utils();
  //vai rescrever a lista interface com o criterio especifico criando uma lista de pessoas com o criterio definido
  @override
  List<Person> meetCriteria(List<Person> persons) {
    List<Person> femalePersons = List<Person>();

    for (Person person in persons) {
      if (util.equalsIgnoreCase(person.getGender(), 'Feminino')) {
        femalePersons.add(person);
      }
    }
    //retorna a lista do genero feminino
    return femalePersons;
  }
}
