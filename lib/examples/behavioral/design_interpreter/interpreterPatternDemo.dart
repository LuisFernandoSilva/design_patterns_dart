import 'package:extra_design_patterns_dart/examples/behavioral/design_interpreter/expression.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_interpreter/orExpression.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_interpreter/terminalExpression.dart';

/**
 * O padrão do intérprete fornece uma maneira de avaliar a gramática ou expressão do idioma.
 * Esse padrão envolve a implementação de uma interface de expressão que informa para interpretar 
 * um contexto específico. Esse padrão é usado na análise SQL, no mecanismo de processamento de símbolos etc.
 * >>Implementação 
 * com uma interface Expression e classes concretas implementando a interface Expression. 
 * É definida uma classe TerminalExpression que atua como um intérprete principal do contexto em questão. 
 * Outras classes OrExpression, AndExpression são usadas para criar expressões combinacionais.
 * InterpreterPatternDemo, nossa classe demo, usará a classe Expression para criar regras e demonstrar
 * a análise de expressões.
 */

void main(List<String> args) {
  Expression isMale = getMaleExpression();
  Expression isMarriedWoman = getMarriedWomanExpression();

  print('John e do genero masculino? ${isMale.interpret('John')}');
  print('Julia e uma mulher casada? ${isMarriedWoman.interpret('Married Julie')}');

}

 // regra robert e john sao do genero mascullino
  Expression getMaleExpression(){
    Expression robert = TerminalExpression('Robert');
    Expression john = TerminalExpression('John');
    return OrExpression(robert, john);
  }

  // regra julia e uma mulher casada
  Expression getMarriedWomanExpression(){
    Expression julie = TerminalExpression('Julie');
    Expression married = TerminalExpression('Married');
    return OrExpression(julie, married);
  }