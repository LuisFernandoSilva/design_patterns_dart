//classe que extends abstractCustomer

import 'package:extra_design_patterns_dart/examples/behavioral/design_null_object/abstractCustomer.dart';

class NullCustomer extends AbstractCustomer {
  @override
  String getName() {
    return 'Nao esta salvo no banco de dados dos clientes';
  }

  @override
  bool isNil() {
    return true;
  }
}
