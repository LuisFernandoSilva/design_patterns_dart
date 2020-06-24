//interface lista pelo criterio

import 'package:extra_design_patterns_dart/examples/structural/design_filter/person.dart';

abstract class Criteria {
  List<Person> meetCriteria(List<Person> persons);
}