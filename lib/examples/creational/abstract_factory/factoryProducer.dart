//Crie uma classe de gerador / produtor de fábrica para obter fábricas passando informações como Shape

import 'package:extra_design_patterns_dart/examples/creational/abstract_factory/abstractFactory.dart';
import 'package:extra_design_patterns_dart/examples/creational/abstract_factory/roundedShapeFactory.dart';
import 'package:extra_design_patterns_dart/examples/creational/abstract_factory/shapeFactory.dart';

class FactoryProducer{
  static AbstractFactory getFactory(bool rounded){
    if (rounded) {
      return RoundedShapeFactory();
    }else{
      return ShapeFactory();
    }
  }
}