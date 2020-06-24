import 'package:extra_design_patterns_dart/examples/behavioral/design_memento/memento.dart';

class CareTaker {
  List<Memento> mementoList = List<Memento>();
  void add (Memento state){
    mementoList.add(state);
  }
  Memento get(int index){
    return mementoList.elementAt(index);
  }
}