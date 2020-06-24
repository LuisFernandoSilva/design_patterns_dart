import 'package:extra_design_patterns_dart/examples/behavioral/design_null_object/abstractCustomer.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_null_object/customerFactory.dart';

/**
 * No padrão Objeto Nulo, um objeto nulo substitui a verificação da instância do objeto NULL.
 * Em vez de colocar se verificar se há um valor nulo, Objeto Nulo reflete um relacionamento não fazer nada.
 * Esse objeto nulo também pode ser usado para fornecer um comportamento padrão, caso os dados não estejam disponíveis.
 * No padrão Objeto Nulo, criamos uma classe abstrata especificando várias operações a serem executadas, 
 * classes concretas estendendo essa classe e uma classe de objeto nula, que não implementam nada nessa 
 * classe e serão usadas aparentemente onde precisamos verificar o valor nulo.
 * >>Implementação
 * Vamos criar uma classe abstrata AbstractCustomer que define as operações. 
 * Aqui, o nome das classes customer e concreta estendendo a classe AbstractCustomer.
 *  Uma classe de fábrica CustomerFactory é criada para retornar objetos RealCustomer ou NullCustomer 
 * com base no nome do cliente passado para ele. NullPatternDemo, nossa classe de demonstração, 
 * usará CustomerFactory para demonstrar o uso do padrão Null Object.
 */

void main(List<String> args) {
  
      AbstractCustomer customer1 = CustomerFactory.getCustomer('Rob');
      AbstractCustomer customer2 = CustomerFactory.getCustomer("Bob");
      AbstractCustomer customer3 = CustomerFactory.getCustomer("Julie");
      AbstractCustomer customer4 = CustomerFactory.getCustomer("Laura");

      print('Clientes:\n'
      '${customer1.getName()}\n'
      '${customer2.getName()}\n'
      '${customer3.getName()}\n'
      '${customer4.getName()}'
      );

  
}