import 'package:extra_design_patterns_dart/examples/creational/design_singleton/singleObject.dart';

/**
 * O padrão Singleton é um dos padrões de design mais simples.
 * Esse padrão envolve uma única classe responsável por criar um objeto, 
 * assegurando que apenas um único objeto seja criado. Essa classe fornece
 * uma maneira de acessar seu único objeto, que pode ser acessado diretamente,
 * sem a necessidade de instanciar o objeto da classe.
 * 
 * >>Implementação* 
 * Vamos criar uma classe SingleObject.
 *  A classe SingleObject tem seu construtor como privado e possui uma instância estática de si mesma.
 *
 * A classe SingleObject fornece um método estático para obter sua instância estática para o mundo exterior. 
 * SingletonPatternDemo, nossa classe demo usará a classe SingleObject para obter um objeto SingleObject.
 * 
 */

main(List<String> args) {
  //  se a der construção ilegal vem um Erro no tempo de compilação:
  // O construtor SingleObject () não está visível
  // Objeto SingleObject = new SingleObject ();
  // pega um objeto valido
  SingleObject object = SingleObject.getInstance();
  //show print
  object.showMessage();
}
