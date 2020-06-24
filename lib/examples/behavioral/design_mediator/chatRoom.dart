//classe mediator

import 'package:extra_design_patterns_dart/examples/behavioral/design_mediator/user.dart';

class ChatRoom {
  static void showMessage(User user, String message){
    print('${DateTime.now().toString()} [${user.getName()}] : $message');
  }
}