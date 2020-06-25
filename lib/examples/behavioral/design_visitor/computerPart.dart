//classe interface do elemento

import 'package:extra_design_patterns_dart/examples/behavioral/design_visitor/computerPartVisitor.dart';

abstract class ComputerPart {
  void accept(ComputerPartVisitor computerPartVisitor);
}