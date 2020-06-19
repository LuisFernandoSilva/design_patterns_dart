import 'package:extra_design_patterns_dart/examples/structural/design_bridge/circle.dart';
import 'package:extra_design_patterns_dart/examples/structural/design_bridge/greenCircle.dart';
import 'package:extra_design_patterns_dart/examples/structural/design_bridge/redCircle.dart';
import 'package:extra_design_patterns_dart/examples/structural/design_bridge/shape.dart';

/**
 * Bridge é usado quando precisamos separar uma abstração de sua implementação 
 * para que as duas possam variar independentemente.
 * Esse tipo de padrão  desacopla a classe de implementação e a classe abstrata, 
 * fornecendo uma estrutura de ponte entre eles. Esse padrão envolve uma interface que atua como uma
 * ponte que torna a funcionalidade de classes concretas independente das classes do implementador de interface.
 * Ambos os tipos de classes podem ser alterados estruturalmente sem se afetarem. 
 * exemplo de  uso da bridge, no qual um círculo pode ser desenhado em cores diferentes usando
 * o mesmo método de classe abstrata, mas diferentes classes de implementadores de bridge.
 * >>Implementação
 * Temos uma interface DrawAPI que atua como implementador de bridge 
 * e classes concretas RedCircle, GreenCircle implementando a interface DrawAPI.
 *  Shape é uma classe abstrata e usará o objeto DrawAPI.
 *  BridgePatternDemo, nossa classe demo usará a classe Shape para desenhar diferentes círculos coloridos
 * 
 */

main(List<String> args) {
  Shape redCircle = Circle(100, 100, 10, RedCircle());
  Shape greenCircle = Circle(100, 100, 10, GreenCircle());

  redCircle.draw();
  greenCircle.draw();
}
