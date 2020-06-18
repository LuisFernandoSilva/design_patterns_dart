import 'package:extra_design_patterns_dart/examples/creational/abstract_factory/shape.dart';

//Crie uma classe abstrata para obter fábricas para objetos de forma normal e arredondada

abstract class AbstractFactory{

  Shape getShape(String shangeType);

}