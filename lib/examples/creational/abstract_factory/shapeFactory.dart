//Crie classes de fábrica estendendo 
//AbstractFactory para gerar objetos de classe concreta com base nas informações fornecidas.

import 'package:extra_design_patterns_dart/examples/creational/abstract_factory/abstractFactory.dart';
import 'package:extra_design_patterns_dart/examples/creational/abstract_factory/rectangle.dart';
import 'package:extra_design_patterns_dart/examples/creational/abstract_factory/shape.dart';
import 'package:extra_design_patterns_dart/examples/creational/abstract_factory/square.dart';

class ShapeFactory extends AbstractFactory {
   @override
   Shape getShape(String shapeType){
     if(_equalsIgnoreCase(shapeType,"RETANGULO")){
         return Rectangle();         
      }else if(_equalsIgnoreCase(shapeType,"QUADRADO")){
         return Square();
      }	 
      return null;
   }



    //metodo que substitui o do java para comparar as strings e converte para letras minusculas e retorna false ou true
  bool _equalsIgnoreCase(String a, String b) =>
      (a == null && b == null) ||
      (a != null && b != null && a.toLowerCase() == b.toLowerCase());

}
