import 'package:extra_design_patterns_dart/examples/behavioral/design_visitor/computer.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_visitor/computerPart.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_visitor/computerPartDisplayVisitor.dart';

/**
 * No padrão Visitor, usamos uma classe de visitantes que altera o algoritmo de execução de uma classe de elemento.
 * Dessa maneira, o algoritmo de execução do elemento pode variar conforme e quando o visitante varia. 
 * De acordo com o padrão, o objeto de elemento deve aceitar o objeto de visitante para que o objeto de visitante
 * lide com a operação no objeto de elemento.
 * >>Implementação
 * Em uma interface ComputerPart que defina aceitar operação. 
 * Teclado, Mouse, Monitor e Computador são classes concretas que implementam a interface ComputerPart. 
 * Definiremos outra interface ComputerPartVisitor que definirá as operações de uma classe de visitantes.
 *  Computador usa visitante concreto para fazer a ação correspondente.
 * VisitorPatternDemo, nossa classe demo, usará as classes Computer e ComputerPartVisitor para demonstrar
 * o uso do padrão de visitante.
 */

void main(List<String> args) {
  ComputerPart computer = Computer();
  computer.accept(ComputerPartDisplayVisitor());
}
