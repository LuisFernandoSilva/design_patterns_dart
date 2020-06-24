import 'package:extra_design_patterns_dart/examples/behavioral/design_mediator/user.dart';

/**
 * O padrão do mediador é usado para reduzir a complexidade da comunicação entre vários objetos ou classes.
 *  Esse padrão fornece uma classe mediadora que normalmente lida com todas as comunicações entre diferentes 
 * classes e suporta fácil manutenção do código por meio de acoplamento solto. 
 * >>Implementação
 * Estamos demonstrando o padrão do mediador por exemplo de uma sala de bate-papo em que vários usuários
 * podem enviar mensagens para a sala de bate-papo e é responsabilidade da sala de bate-papo mostrar as 
 * mensagens a todos os usuários. Criamos duas classes ChatRoom e User. Os objetos de usuário usarão o
 *  método ChatRoom para compartilhar suas mensagens. MediatorPatternDemo, nossa classe demo, 
 * usará objetos Usuário para mostrar a comunicação entre eles.
 */


void main(List<String> args) {
  
  User robert = User('Robert');
  User john = User('John');
  robert.sendMessage('Ola, John');
  john.sendMessage('Oi, Robert');
}