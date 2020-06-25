//classe interface que representa o visitante

import 'dart:ffi';

import 'package:extra_design_patterns_dart/examples/behavioral/design_visitor/computer.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_visitor/keyboard.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_visitor/monitor.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_visitor/mouse.dart';

abstract class ComputerPartVisitor {
  void visitComputer(Computer computer);
  void visitMouse(Mouse mouse);
  void visitKeyboard(Keyboard keyboard);
  void visitMonitor(Monitor monitor);
}
