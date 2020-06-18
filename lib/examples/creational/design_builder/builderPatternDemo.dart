import 'package:extra_design_patterns_dart/examples/creational/design_builder/MealBuilder.dart';
import 'package:extra_design_patterns_dart/examples/creational/design_builder/meal.dart';

/**
 * O padrão Builder cria um objeto complexo usando objetos simples e usando uma abordagem passo a passo. 
 * esse padrão fornece uma das melhores maneiras de criar um objeto.
 * Uma classe Builder cria o objeto final passo a passo e é independente de outros objetos.
 * 
 * >>Implementação
 * Consideramos um caso comercial de restaurante de fast-food, 
 * onde uma refeição típica pode ser um hambúrguer e uma bebida gelada. 
 * O Burger pode ser um Veg Burger ou um Chicken Burger e será embalado por uma embalagem.
 * A bebida gelada pode ser uma coca-cola ou pepsi e será embalada em uma garrafa.
 * Vamos criar uma interface Item representando itens alimentares, como hambúrgueres e bebidas frias
 * e classes concretas implementando a interface Item
 * e uma interface Packing representando embalagens de itens alimentares e 
 * classes concretas implementando a interface Packing, pois o hambúrguer seria embalado 
 * em embalagem e bebida gelada seria embalado como garrafa.
 * Em seguida, criamos uma classe Meal com ArrayList of Item e
 * um MealBuilder para criar diferentes tipos de objetos Meal combinando Item.
 * BuilderPatternDemo, nossa classe demo usará o MealBuilder para criar uma refeição.
 */

main(List<String> args) {
  
  MealBuilder mealbuilder = MealBuilder();

  Meal vegMeal = mealbuilder.prepareVegMeal();
  print('Hamburger vegetariano');
  vegMeal.showItems();
  print('Custo total: ${vegMeal.getCost()}');

  Meal nonMeal = mealbuilder.prepareNonVegMeal();
  print('Hamburger');
  nonMeal.showItems();
  print('Custo total: ${nonMeal.getCost()}'); 

}