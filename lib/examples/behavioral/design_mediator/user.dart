import 'package:extra_design_patterns_dart/examples/behavioral/design_mediator/chatRoom.dart';

class User {
  String name;
  String getName() {
    return name;
  }
  void setName(String name){
    this.name =  name;
  }
  User(this.name);
  void sendMessage(String message){
    ChatRoom.showMessage(this,message );
  }
}
