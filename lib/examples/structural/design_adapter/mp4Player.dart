//classe concreta que implenta a interface advancedMedia

import 'package:extra_design_patterns_dart/examples/structural/design_adapter/advancedMediaPlayer.dart';

class Mp4Player implements AdvancedMediaPlayer {
  //metodo que nao subscreve, apenas add pq tem na interface
  @override
  void playVlc(String fileName) {
   //não faz nada
  }
  
  @override
  void playMp4(String fileName) {
      print('Tocando arquivo mp4. Nome: $fileName');
  }

}
