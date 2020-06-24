//classe concreta

import 'package:extra_design_patterns_dart/examples/behavioral/design_observer/observer.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_observer/subject.dart';

class BinaryObserver extends Observer {
  BinaryObserver(Subject subject) {
    this.subject = subject;
    this.subject.attach(this);
  }
  @override
  void update() {
    print('String binaria: ${subject.getState().toRadixString(2)}');
  }
}
