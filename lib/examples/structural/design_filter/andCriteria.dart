//classe concreta do controle dos criteiros a serem usados nesse caso quando definidos dois criterios 
// exemplo masculino and solteiro.

import 'package:extra_design_patterns_dart/examples/structural/design_filter/criteria.dart';
import 'package:extra_design_patterns_dart/examples/structural/design_filter/person.dart';

class AndCriteria implements Criteria {
  //cria os objetos de interface de criterios
  Criteria _criteria;
  Criteria otherCriteria;

  AndCriteria(this._criteria, this.otherCriteria);
  //vai se passar o criteiro como parametro que vai ser salvo na lista de criterio da vez 
  //e repassado para o proximo criterio
  @override
  List<Person> meetCriteria(List<Person> persons) {
    //cria uma lista de pessoas com o primerio criterio
    List<Person>firstCriteriaPersons = _criteria.meetCriteria(persons);

    return otherCriteria.meetCriteria(firstCriteriaPersons);
  }
  
}