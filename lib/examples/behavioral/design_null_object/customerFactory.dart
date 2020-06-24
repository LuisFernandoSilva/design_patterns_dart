import 'package:extra_design_patterns_dart/examples/behavioral/design_null_object/abstractCustomer.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_null_object/nullCostumer.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_null_object/realCustomer.dart';
import 'package:extra_design_patterns_dart/examples/utils.dart';

class CustomerFactory {
  static AbstractCustomer getCustomer(String name) {
    Utils utils = Utils();
    List<String> names = ['Rob', 'Joe', 'Julie'];
    for (var i = 0; i < names.length; i++) {
      if (utils.equalsIgnoreCase(names[i], name)) {
        return RealCustomer(name);
      }
    }
    return NullCustomer();
  }
}
