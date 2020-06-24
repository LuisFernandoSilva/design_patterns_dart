//classe concreta

import 'package:extra_design_patterns_dart/examples/behavioral/design_observer/observer.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/design_observer/subject.dart';

class HexaObserver extends Observer {
  HexaObserver(Subject subject) {
    this.subject = subject;
    this.subject.attach(this);
  }
  @override
  void update() {
    print('String binaria: ${subject.getState().toRadixString(16)}');
  }
}
