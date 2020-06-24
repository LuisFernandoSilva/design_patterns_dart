
import 'package:extra_design_patterns_dart/examples/behavioral/design_interpreter/expression.dart';

class OrExpression implements Expression {
  Expression expr1 = null;
  Expression expr2 = null;

  OrExpression(Expression expr1, Expression expr2){
    this.expr1 = expr1;
    this.expr2 = expr2;
  }

  @override
  bool interpret(String context) {
   return expr1.interpret(context) || expr2.interpret(context);
    
  }
  
}