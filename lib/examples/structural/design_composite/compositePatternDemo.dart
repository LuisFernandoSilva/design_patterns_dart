import 'package:extra_design_patterns_dart/examples/structural/design_composite/employee.dart';

/**
 * O padrão composite é usado onde precisamos tratar um grupo de objetos de maneira semelhante a um único objeto.
 * composite compõe objetos em termos de uma estrutura em árvore para representar parte e toda a hierarquia. 
 * Ele cria uma estrutura em árvore do grupo de objetos.
 * Esse padrão cria uma classe que contém um grupo de seus próprios objetos.
 * Esta classe fornece maneiras de modificar seu grupo dos mesmos objetos.
 * no exemplo, no qual mostraremos a hierarquia dos funcionários de uma organização.
 * >>Implementação
 * Temos uma classe Employee que atua como classe de actor de padrão composite. 
 * CompositePatternDemo, nossa classe demo usará a classe Employee para 
 * adicionar hierarquia no nível do departamento e imprimir todos os funcionários.
 */

main(List<String> args) {
      //cria os empregados e seus departamentos e salarios
      Employee ceo = Employee('John','CEO', 30000);

      Employee headSales = Employee('Robert','Chefe das vendas', 20000);

      Employee headMarketing = Employee('Michel','Chefe do Marketing', 20000);

      Employee clerk1 = Employee('Laura','Marketing', 10000);
      Employee clerk2 = Employee('Bob','Marketing', 10000);

      Employee salesExecutive1 = Employee('Richard','Vendas', 10000);
      Employee salesExecutive2 = Employee('Rob','Vendas', 10000);
      //add a hierarquia de cada funcionario 
      ceo.add(headSales);
      ceo.add(headMarketing);

      headSales.add(salesExecutive1);
      headSales.add(salesExecutive2);

      headMarketing.add(clerk1);
      headMarketing.add(clerk2);
      //printa todos os empregados da empresa
      print(ceo);
      //uso do for in para printar os subordinados conforme a hierarquia
      for (Employee headEmployee in ceo.getSubordinates()) {
        print(headEmployee);
        for (Employee employee in headEmployee.getSubordinates()){
          print(employee);
        }
      }

}