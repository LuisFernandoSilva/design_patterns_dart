import 'package:extra_design_patterns_dart/examples/behavioral/design_command/broker.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_command/buyStock.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_command/sellStock.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_command/stock.dart';

/** 
 * O padrão de comando é um padrão de design controlado por dados. 
 * Uma solicitação é agrupada sob um objeto como comando e passada para o objeto invocador.
 * O objeto Invoker procura o objeto apropriado que pode manipular esse comando e passa o 
 * comando para o objeto correspondente que executa o comando.
 * >>Implementação
 * Criamos uma interface Order que está atuando como um comando.
 *  Criamos uma classe de ações que atua como uma solicitação.
 *  Temos classes de comando concretas BuyStock e SellStock implementando a interface Order, 
 * que fará o processamento real do comando. É criada uma classe Broker que atua como um objeto invocador. 
 * Pode receber e fazer pedidos. O objeto Broker usa o padrão de comando para identificar 
 * qual objeto executará qual comando com base no tipo de comando. 
 * CommandPatternDemo, nossa classe demo, usará a classe Broker para demonstrar o padrão de comando.
*/

void main(List<String> args) {
  Stock abcStock = Stock();
  BuyStock buyStockOrder = BuyStock(abcStock);
  SellStock sellStockOrder = SellStock(abcStock);

  Broker broker = Broker();
  broker.takeOrder(buyStockOrder);
  broker.takeOrder(sellStockOrder);

  broker.placeOrders();

}