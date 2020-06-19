//classe concreta adapter que vai implementar a interfce mediaplayer

import 'package:extra_design_patterns_dart/examples/structural/design_adapter/advancedMediaPlayer.dart';
import 'package:extra_design_patterns_dart/examples/structural/design_adapter/mediaPlayer.dart';
import 'package:extra_design_patterns_dart/examples/structural/design_adapter/mp4Player.dart';
import 'package:extra_design_patterns_dart/examples/structural/design_adapter/vlcPlayer.dart';
import 'package:extra_design_patterns_dart/examples/utils.dart';


class MediaAdapter implements MediaPlayer {
  //cria um objeto do tipo advanced interface
  AdvancedMediaPlayer advancedMusicPlayer;
  Utils utils = Utils();

  //contrutor da classe se passa o tipo de audio advanced para ser criado 
  MediaAdapter(String audioType) {
    if (utils.equalsIgnoreCase(audioType, 'vlc')) {
      //instancia a interface conforme o tipo de classe audio
      advancedMusicPlayer = VlcPlayer();
    }else if(utils.equalsIgnoreCase(audioType, 'mp4')){
      advancedMusicPlayer = Mp4Player();
    }
  }
  //subscreve o metodo play pra tocar o arquivo especificado
  @override
  void play(String audioType, String fileName){
        if (utils.equalsIgnoreCase(audioType, 'vlc')) {
      advancedMusicPlayer.playVlc(fileName);
    }else if(utils.equalsIgnoreCase(audioType, 'mp4')){
      advancedMusicPlayer.playMp4(fileName);
    }
  }


}
