import 'dart:math';

import 'package:extra_design_patterns_dart/examples/structural/design_flyweight/circle.dart';
import 'package:extra_design_patterns_dart/examples/structural/design_flyweight/shapeFactory.dart';

/**
 * O padrão Flyweight é usado principalmente para reduzir o número de objetos criados e diminuir o 
 * espaço ocupado na memória e aumentar o desempenho. Esse tipo de padrão  pois fornece maneiras de diminuir 
 * a contagem de objetos, melhorando a estrutura do aplicativo.
 * O padrão Flyweight tenta reutilizar objetos do tipo semelhantes já existentes, armazenando-os e
 * cria um novo objeto quando nenhum objeto correspondente é encontrado. Demonstraremos esse padrão 
 * desenhando 20 círculos de locais diferentes, mas criaremos apenas 5 objetos. Apenas 5 cores estão disponíveis,
 * portanto, a propriedade color é usada para verificar os objetos Circle já existentes.
 * >>Implementação
 * Implementamos uma interface Shape e uma classe concreta Circle implementando a interface Shape. 
 * Uma classe de fábrica ShapeFactory é definida como uma próxima etapa.
 * ShapeFactory possui um HashMap de Circle com chave como cor do objeto Circle.
 * Sempre que uma solicitação vem para criar um círculo de cor específica para o ShapeFactory,
 * ela verifica o objeto do círculo em seu HashMap, se o objeto do Círculo for encontrado, 
 * esse objeto será retornado, caso contrário, um novo objeto será criado, armazenado no hashmap para uso 
 * futuro e retornado para cliente.
 * FlyWeightPatternDemo, nossa classe de demonstração, usará o ShapeFactory para obter um objeto Shape.
 * Ele passará informações (vermelho / verde / azul / preto / branco) para o ShapeFactory para obter o 
 * círculo da cor desejada de que precisa.
 */


List<String> colors = ['vermelho', 'verde', 'azul','branco','preto'];
Random random = Random();
void main(List<String> args) {
  var newcircle = ShapeFactory();
  for (var i = 0; i < 20; i++) {
    Circle circle = newcircle.getCircle(getRandomColor());
    circle.setX(getRandomX());
    circle.setY(getRandomY());
    circle.setRadius(100);
    circle.draw();
  }

 
  
}

String getRandomColor(){
  return colors[(random.nextInt(colors.length))];
}
int getRandomX(){
  return random.nextInt(100);
}
int getRandomY(){
  return random.nextInt(100);
}