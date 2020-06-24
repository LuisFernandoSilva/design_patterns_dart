import 'package:extra_design_patterns_dart/examples/structural/design_facade/shapeMaker.dart';

/**
 * O padrão de facade oculta as complexidades do sistema e fornece uma interface para o cliente, usando uma
 * a qual o cliente pode acessar o sistema. Esse tipo de padrão  adiciona uma interface ao sistema existente
 * para ocultar suas complexidades.
 * Esse padrão envolve uma única classe que fornece métodos simplificados exigidos pelo cliente 
 * e delega chamadas para métodos de classes de sistema existentes.
 * >>Implementação
 * com uma interface Shape e classes concretas implementando a interface Shape.
 *  Uma classe de facade ShapeMaker é definida como uma próxima etapa.
 * A classe ShapeMaker usa as classes concretas para delegar chamadas de usuário a essas classes. 
 * FacadePatternDemo, nossa classe de demonstração, usará a classe ShapeMaker para mostrar os resultados.
*/

void main(List<String> args) {
  //objeto do tipo facade 
 ShapeMaker shapeMaker = ShapeMaker();

  shapeMaker.drawCircle();
  shapeMaker.drawRectangle();
  shapeMaker.drawSquare();
  
}
