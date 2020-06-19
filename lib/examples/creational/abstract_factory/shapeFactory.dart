//Crie classes de fábrica estendendo 
//AbstractFactory para gerar objetos de classe concreta com base nas informações fornecidas.

import 'package:extra_design_patterns_dart/examples/creational/abstract_factory/abstractFactory.dart';
import 'package:extra_design_patterns_dart/examples/creational/abstract_factory/rectangle.dart';
import 'package:extra_design_patterns_dart/examples/creational/abstract_factory/shape.dart';
import 'package:extra_design_patterns_dart/examples/creational/abstract_factory/square.dart';
import 'package:extra_design_patterns_dart/examples/utils.dart';

class ShapeFactory extends AbstractFactory {

    Utils utils = Utils();
   @override
   Shape getShape(String shapeType){
     if(utils.equalsIgnoreCase(shapeType,"RETANGULO")){
         return Rectangle();         
      }else if(utils.equalsIgnoreCase(shapeType,"QUADRADO")){
         return Square();
      }	 
      return null;
   }





}
