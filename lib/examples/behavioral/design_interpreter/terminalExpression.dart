//classe concreta que implemente interface

import 'package:extra_design_patterns_dart/examples/behavioral/design_interpreter/expression.dart';

class TerminalExpression implements Expression {
  String data;

  TerminalExpression(String data) {
    this.data = data;
  }

  @override
  bool interpret(String context) {
    if (context.contains(data)) {
      return true;
    }
    return false;
  }
}
