import 'package:extra_design_patterns_dart/examples/structural/design_proxy/image.dart';
import 'package:extra_design_patterns_dart/examples/structural/design_proxy/proxyImage.dart';

/**
 * 
 * No padrão de proxy, uma classe representa a funcionalidade de outra classe.
 * No padrão de proxy, criamos um objeto com um objeto original para fazer 
 * interface de sua funcionalidade com o mundo exterior.
 * >>Implementação
 * em uma interface de image e classes concretas implementando a interface de image. 
 * ProxyImage é uma classe de proxy para reduzir o consumo de memória do carregamento do objeto RealImage.
 * ProxyPatternDemo, nossa classe de demonstração, usará ProxyImage para obter um objeto de 
 * image para carregar e exibir conforme necessário.
 * 
 */

void main(List<String> args) {
  Image image = ProxyImage('test_image.png');
  //image que carrega do disck
  image.display();
  print('');
  //imagem que nao carrega do disk
  image.display();
  
}