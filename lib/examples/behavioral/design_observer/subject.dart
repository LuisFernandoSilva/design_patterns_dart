//que ira notificar a classe observer caso realize uma mudança na classe cliente
import 'package:extra_design_patterns_dart/examples/behavioral/design_observer/observer.dart';

class Subject {
  List<Observer> observers = List<Observer>();
  int state;

  int getState() {
    return state;
  }

  void setState(int state) {
    this.state = state;
    notifyAllObservers();
  }

  void attach(Observer observer) {
    observers.add(observer);
  }

  void notifyAllObservers() {
    for (Observer observ in observers) {
      observ.update();
    }
  }
}
