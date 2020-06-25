import 'package:extra_design_patterns_dart/examples/behavioral/design_visitor/computer.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_visitor/computerPartVisitor.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_visitor/mouse.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_visitor/monitor.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_visitor/keyboard.dart';

class ComputerPartDisplayVisitor implements ComputerPartVisitor{
  @override
  void visitComputer(Computer computer) {
    print('Display Computador');
  }

  @override
  void visitKeyboard(Keyboard keyboard) {
    print('Display teclado');
  }

  @override
  void visitMonitor(Monitor monitor) {
    print('Display monitor');
  }

  @override
  void visitMouse(Mouse mouse) {
    print('Display mouse');
  }
  
}