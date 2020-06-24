//classe abstract observer

import 'package:extra_design_patterns_dart/examples/behavioral/design_observer/subject.dart';


abstract class Observer {
  Subject subject;
  void update();
}

