//classe que extends abstractCustomer

import 'package:extra_design_patterns_dart/examples/behavioral/design_null_object/abstractCustomer.dart';

class RealCustomer extends AbstractCustomer {
  RealCustomer(String name) {
    this.name = name;
  }

  @override
  String getName() {
    return name;
  }

  @override
  bool isNil() {
    return false;
  }
}
