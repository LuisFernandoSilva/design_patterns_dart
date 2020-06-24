//classe concreta que implementa a interface state

import 'package:extra_design_patterns_dart/examples/behavioral/design_state/context.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_state/state.dart';

class StopState implements State{


  @override
  void doAction(Context context) {
    print('O jogador parou');
    context.setState(this);
  }
  @override
  String toString() {
    return 'Estado parou';
  }  
}