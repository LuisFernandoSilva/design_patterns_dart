//classe concreta que implenta a interface advancedMedia

import 'package:extra_design_patterns_dart/examples/structural/design_adapter/advancedMediaPlayer.dart';

class VlcPlayer implements AdvancedMediaPlayer {
  @override
  void playVlc(String fileName) {
    print('Tocando arquivo vlc. nome: $fileName');
  }
  //metodo que nao subscreve, apenas add pq tem na interface
  @override
  void playMp4(String fileName) {
    //não faz nada
  }

}
