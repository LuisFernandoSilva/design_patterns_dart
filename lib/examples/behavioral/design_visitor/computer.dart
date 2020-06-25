import 'package:extra_design_patterns_dart/examples/behavioral/design_visitor/computerPart.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_visitor/computerPartVisitor.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_visitor/keyboard.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_visitor/monitor.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_visitor/mouse.dart';

class Computer implements ComputerPart{
  List<ComputerPart> parts = [];
  Computer(){
    parts = List<ComputerPart>();
    parts = [Mouse(),Keyboard(),Monitor()];
  }
  @override
  void accept(ComputerPartVisitor computerPartVisitor) {
    for (var i = 0; i < parts.length; i++) {
        parts[i].accept(computerPartVisitor);
    }
    computerPartVisitor.visitComputer(this);
  }
  
}