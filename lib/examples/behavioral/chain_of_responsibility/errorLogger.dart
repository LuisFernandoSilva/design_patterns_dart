//classes concretas que extends logs

import 'package:extra_design_patterns_dart/examples/behavioral/chain_of_responsibility/abstractLogger.dart';

class ErrorLogger extends AbstractLogger {
  ErrorLogger(int level) {
    this.level = level;
  }
  @override
  void write(String message) {
    print('Error console logs: $message');
  }
}
