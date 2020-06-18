import 'package:extra_design_patterns_dart/examples/creational/abstract_factory/abstractFactory.dart';
import 'package:extra_design_patterns_dart/examples/creational/abstract_factory/factoryProducer.dart';
import 'package:extra_design_patterns_dart/examples/creational/abstract_factory/shape.dart';

/**
 * >>abstract Factory
 * Resumo trabalha em torno de um super-fábrica que cria outras fábricas. 
 * Esta fábrica é também chamado de fábrica das fábricas. Este tipo de padrão creational 
 * fornece uma das melhores maneiras de criar um objeto. Em Resumo abstract factory interface 
 * é responsável pela criação de uma fábrica de objetos relacionados sem especificar explicitamente suas classes.
 *  Cada gerado fábrica pode dar a objetos conforme o padrão de Fábrica.
 * >>Implementação 
 * Vamos criar um shape de interface e uma classe concreta aplicação. 
 * Criamos uma classe AbstractFactory, Classe de factory de ShapeFactory é definida, 
 * a qual se estende AbstractFactory. Uma factory criadora/geradora da classe FactoryProducer é criado.
 * AbstractFactoryPatternDemo, a nossa demonstração de classe usa FactoryProducer para obter 
 * uma AbstractFactory objeto. 
 * Ele vai passar informações (CÍRCULO / RETÂNGULO / QUADRADO para a shape) e para AbstractFactory 
 * obtendo assim o tipo de objeto que ele precisa.
 * 
 * 
 */

  //Use o FactoryProducer para obter o
  // AbstractFactory para obter fábricas de classes concretas passando informações como tipo.
main(List<String> args) {
  //pega shapeFactory
  AbstractFactory shapeFactory = FactoryProducer.getFactory(false);
  //pega um objeto retangulo 
  Shape shape1 = shapeFactory.getShape('RETANGULO');
  //Desenha com o metodo draw
  shape1.draw();
  //pega um objeto retangulo 
  Shape shape2 = shapeFactory.getShape('QUADRADO');
  //Desenha com o metodo draw
  shape2.draw();
  //pega shapeFactory
  AbstractFactory shapeFactory1 = FactoryProducer.getFactory(true);
  //pega um objeto retangulo 
  Shape shape3 = shapeFactory1.getShape('RETANGULO');
  //Desenha com o metodo draw
  shape3.draw();
  //pega um objeto quadrado 
  Shape shape4 = shapeFactory1.getShape('QUADRADO');
  //Desenha com o metodo draw
  shape4.draw();

  

}