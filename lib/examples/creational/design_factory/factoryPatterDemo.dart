


import 'package:extra_design_patterns_dart/examples/creational/design_factory/shape.dart';
import 'package:extra_design_patterns_dart/examples/creational/design_factory/shapeFactory.dart';

/**
 * Design Factory.
 * Padrão de fábrica é um dos mais utilizados padrões de projeto. 
 * Este tipo de padrão de design vem em creational padrão como esse padrão fornece 
 * uma das melhores maneiras de criar um objeto.
 * No padrão de Fábrica, nós criamos o objeto, sem expor a lógica de criação para o cliente
 * e se referem ao objeto recém-criado usando uma interface comum.
 * 
 * >>implementação.
 * Vamos criar uma  shape interface e classes concretas a implementar shape interface.
 * Uma classe de factory, ShapeFactory aonde e definido o próximo passo.
 * FactoryPatternDemo, a nossa demonstração de classe vai usar ShapeFactory para obter uma Forma de objeto.
 * Ele vai passar informações (CÍRCULO / RETÂNGULO / QUADRADO) para ShapeFactory para obter o tipo de objeto 
 * que ele precisa.
 * 
 */

main(List<String> args) {
    ShapeFactory shapeFactory = ShapeFactory();
    //pega o objeto circulo e chama o metodo que desenha
    Shape shape1 = shapeFactory.getShape('CIRCULO');
    //metodo que desenha
    shape1.draw();
    //pega o objeto Retangulo e chama o metodo que desenha
    Shape shape2 = shapeFactory.getShape('RETANGULO');
    //metodo que desenha
    shape2.draw();
    //pega o objeto quadrado e chama o metodo que desenha
    Shape shape3 = shapeFactory.getShape('QUADRADO');
    //metodo que desenha
    shape3.draw();


}