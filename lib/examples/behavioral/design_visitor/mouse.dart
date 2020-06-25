//classe concreta que implementa a interface computer part que tem a interface computerpartvisitor
import 'package:extra_design_patterns_dart/examples/behavioral/design_visitor/computerPart.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_visitor/computerPartVisitor.dart';

class Mouse implements ComputerPart {
  @override
  void accept(ComputerPartVisitor computerPartVisitor) {
    computerPartVisitor.visitMouse(this);
  }
}
