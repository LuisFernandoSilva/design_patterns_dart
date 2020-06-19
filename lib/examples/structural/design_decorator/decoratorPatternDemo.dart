import 'package:extra_design_patterns_dart/examples/structural/design_decorator/circle.dart';
import 'package:extra_design_patterns_dart/examples/structural/design_decorator/rectangle.dart';
import 'package:extra_design_patterns_dart/examples/structural/design_decorator/redShapeDecorator.dart';
import 'package:extra_design_patterns_dart/examples/structural/design_decorator/shape.dart';

/**
 * O padrão Decorator permite que um usuário adicione novas funcionalidades a um objeto existente 
 * sem alterar sua estrutura atuando como um invólucro para a classe existente.
 * Esse padrão cria uma classe decoradora que agrupa a classe original e fornece funcionalidade adicional,
 *  mantendo intacta a assinatura dos métodos de classe.
 *  No exemplo a seguir, decoraremos uma shape com alguma cor sem alterar a classe shape.
 *  >>Implementação
 * Vamos criar uma interface Shape e classes concretas implementando a interface Shape. 
 * Em seguida, criaremos uma classe decoradora abstrata ShapeDecorator implementando a interface Shape 
 * e tendo o objeto Shape como sua variável de instância. RedShapeDecorator é uma classe concreta que
 *  implementa o ShapeDecorator. DecoratorPatternDemo, nossa classe demo usará RedShapeDecorator
 *  para decorar objetos Shape
 */

main(List<String> args) {
    //aqui a interface funciona normalmente com a funcao de apena desenha o circulo
    Shape circle = Circle();
    //aqui usa a interface pra fazer o circulo e ao mesmo tempo o alterando pra decorar com a borda sem alterar
    //o metodo original 
    Shape redCircle = RedShapeDecorator(Circle());
    Shape redRectangule = RedShapeDecorator(Rectangle());
    print('Circulo com a borda normal');
    circle.draw();
    print('\n Circulo com a borda vermelha');
    redCircle.draw();
    print('\nRetangulo com a borda vermelha');
    redRectangule.draw();
}