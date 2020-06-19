//classe concreta que implementa o mediaplayer

import 'package:extra_design_patterns_dart/examples/structural/design_adapter/mediaAdapter.dart';
import 'package:extra_design_patterns_dart/examples/structural/design_adapter/mediaPlayer.dart';
import 'package:extra_design_patterns_dart/examples/utils.dart';

class AudioPlayer implements MediaPlayer {
  Utils utils = Utils();
  //cria um objeto do tipo mediaAdapter
  MediaAdapter mediaAdapter;

  @override
  void play(String audioType, String fileName){
    //o padrao de audio escutado e o mp3
    if(utils.equalsIgnoreCase(audioType, 'mp3')){
      print('Tocando arquivo de mp3. nome: $fileName');
    }
    //o media adapter dando suporte a outros tipos de arquivo
    else if(utils.equalsIgnoreCase(audioType, 'vlc')||utils.equalsIgnoreCase(audioType, 'mp4')){
      //instancia o objeto do tipo adapter e passa o tipo de audio a ser tocado
      mediaAdapter = MediaAdapter(audioType);
      mediaAdapter.play(audioType, fileName);
    }else{
      print('Media invalida. $audioType não um formato suportado');
    }

  } 


}
