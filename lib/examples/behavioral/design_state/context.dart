import 'package:extra_design_patterns_dart/examples/behavioral/design_state/state.dart';

class Context {
  State state;
  void setState(State state){
    this.state = state;
  }
  State getState(){
    return state;
  }
}