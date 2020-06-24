import 'package:extra_design_patterns_dart/examples/behavioral/design_memento/memento.dart';

class Originator {
  String state;
  void setState(String state){
    this.state = state;
  }
  String getState(){
    return state;
  }
  Memento saveStateToMemento(){
    return Memento(state);
  }
  void getStateFromMemento(Memento memento){
    state = memento.getState();
  }
  
}