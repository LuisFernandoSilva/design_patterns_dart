//classe employee que tem a lista de objetos employee

class Employee{

  String name;
  String dept;
  int salary;
  List<Employee> subordinates;


  Employee(String name, String dept, int salary){
    this.name = name;
    this.dept = dept;
    this.salary = salary;
    //uma lista literal
    subordinates = <Employee>[];

  }

  void add(Employee e){
    subordinates.add(e);
  }
  void remove(Employee e){
    subordinates.remove(e);
  }
  List<Employee> getSubordinates(){
    return subordinates;
  }
  //subscreve o metodo da classe object
  @override
  String toString(){
    return ('Empregado: Nome: $name, dept: $dept, salario: $salary');
  }


}