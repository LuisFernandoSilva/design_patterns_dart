//classe concreta do controle dos criteiros a serem usados nesse caso quando definidos dois criterios 
// exemplo masculino or solteiro.

import 'package:extra_design_patterns_dart/examples/structural/design_filter/criteria.dart';
import 'package:extra_design_patterns_dart/examples/structural/design_filter/person.dart';

class OrCriteria implements Criteria {
  //cria os objetos de interface de criterios
  Criteria _criteria;
  Criteria _otherCriteria;

  OrCriteria(this._criteria, this._otherCriteria);
  //vai se passar o criteiro como parametro que vai ser salvo na lista de criterio 
  // que ira testar para qual lista de criterios a serem retornada
  @override
  List<Person> meetCriteria(List<Person> persons) {
    //cria uma lista de pessoas com o primerio criterio
    List<Person>firstCriteriaPersonsItems = _criteria.meetCriteria(persons);
    List<Person>otherCriteriaItems = _otherCriteria.meetCriteria(persons);
    //para cada item que tiver no outro criterio list, faz o teste se nao tem na primeira lista caso true add
    for (Person person in otherCriteriaItems) {
      if (!firstCriteriaPersonsItems.contains(person)) {
        firstCriteriaPersonsItems.add(person);
      }
    }
    return firstCriteriaPersonsItems;
  }
  
}