import 'package:extra_design_patterns_dart/examples/creational/design_prototype/rectangle.dart';

/**
 * é à criação de objetos duplicados, mantendo o desempenho em mente.
 * Esse padrão envolve a implementação de uma interface de protótipo que 
 * informa para criar um clone do objeto atual. Esse padrão é usado quando a criação do objeto diretamente é cara.
 * Por exemplo, um objeto deve ser criado após uma operação de banco de dados dispendiosa. 
 * Podemos armazenar em cache o objeto, retornar seu clone na próxima solicitação e atualizar o 
 * banco de dados conforme e quando necessário, reduzindo assim as chamadas ao banco de dados.
 * 
 * >>>Implementação
 * Vamos criar uma classe abstrata Shape e classes concretas estendendo a classe Shape. 
 * Uma classe ShapeCache é definida como uma próxima etapa que armazena objetos de forma em um Hashtable e 
 * retorna seu clone quando solicitado. PrototypPatternDemo, nossa classe demo usará a classe ShapeCache para obter um objeto Shape.
 */
//codigo exemplo do https://github.com/scottt2/design-patterns-in-dart/blob/master/prototype/prototype.dart

main(List<String> args) {
  var ogRect = Rectangle(0, 0, 100, 100);
  var cloneRect = ogRect.clone();
  var someOtherRect = Rectangle(0, 0, 100, 100);

  print("ogRect ${ogRect.cloneStatus}.");
  print("cloneRect ${cloneRect.cloneStatus}.");
  print("someOtherRect ${someOtherRect.cloneStatus}.");

  String cloneIsClone =
      ogRect == cloneRect ? "is a clone of" : "is not a clone of";
  print("\r\ncloneRect $cloneIsClone ogRect.");

  String someRectIsClone =
      ogRect == someOtherRect ? "is a clone of" : "is not a clone of";
  print("someOtherRect $someRectIsClone ogRect.");
}
