import 'package:extra_design_patterns_dart/examples/behavioral/design_strategy/strategy.dart';

class Context {
  Strategy strategy;
  Context(Strategy strategy){
    this.strategy = strategy;
  }
  int executeStrategy(int num1, int num2){
    return strategy.doOperation(num1, num2);
  }
}