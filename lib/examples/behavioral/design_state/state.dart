//classe interface
import 'package:extra_design_patterns_dart/examples/behavioral/design_state/context.dart';

abstract class State {
  void doAction(Context context);
}