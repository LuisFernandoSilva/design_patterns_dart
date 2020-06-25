//classes concretas que implementa uma interface
import 'package:extra_design_patterns_dart/examples/behavioral/design_strategy/strategy.dart';

class OperationSub implements Strategy {
  @override
  int doOperation(int num1, int num2) {
    return num1 - num2;
  }
}
