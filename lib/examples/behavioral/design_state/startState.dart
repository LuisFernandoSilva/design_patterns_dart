//classe concreta que implementa a interface state

import 'package:extra_design_patterns_dart/examples/behavioral/design_state/context.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_state/state.dart';

class StartState implements State{


  @override
  void doAction(Context context) {
    print('O jogador iniciou');
    context.setState(this);
  }
  @override
  String toString() {
    return 'Estado iniciado';
  }  
}