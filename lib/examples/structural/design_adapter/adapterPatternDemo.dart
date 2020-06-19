import 'package:extra_design_patterns_dart/examples/structural/design_adapter/audioPlayer.dart';

/**
 * O adapter funciona como uma ponte entre duas interfaces incompatíveis.
 * Esse padrão envolve uma única classe responsável por unir funcionalidades de interfaces independentes ou incompatíveis.
 * Um exemplo da vida real pode ser um caso de leitor de cartão que atua como um adaptador entre o cartão de memória e um laptop. 
 * Você pluga o cartão de memória no leitor de cartões e no leitor de cartões no laptop para que o cartão de memória possa ser lido via laptop.
 * Estamos demonstrando o uso do padrão do adaptador no exemplo a seguir, no qual um dispositivo de reprodutor de áudio pode reproduzir apenas arquivos mp3 e deseja usar um reprodutor de áudio avançado capaz de reproduzir arquivos vlc e mp4.
 *>>Implementação
 * Temos uma interface MediaPlayer e uma classe concreta AudioPlayer implementando a interface MediaPlayer.
 * O AudioPlayer pode reproduzir arquivos de áudio no formato mp3 por padrão. Tendo outra
 * interface AdvancedMediaPlayer e classes concretas implementando a interface AdvancedMediaPlayer.
 * Essas classes podem reproduzir arquivos no formato vlc e mp4.
 * Queremos que o AudioPlayer reproduza outros formatos também. 
 * Para isso, criamos uma classe de adaptador MediaAdapter que implementa a interface MediaPlayer
 * e usa objetos AdvancedMediaPlayer para reproduzir o formato necessário.
 * O AudioPlayer usa a classe do adaptador MediaAdapter, transmitindo o tipo de áudio desejado 
 * sem conhecer a classe real que pode reproduzir o formato desejado. AdapterPatternDemo, 
 * nossa classe demo usará a classe AudioPlayer para reproduzir vários formatos.
 * 
 */

  main(List<String> args) {
    AudioPlayer audioPlayer = AudioPlayer();
    audioPlayer.play('mp3', 'qualquer musica.mp3');
    audioPlayer.play('mp4', 'qualquer musica.mp4');
    audioPlayer.play('vlc', 'qualquer musica.vlc');
    audioPlayer.play('avi', 'teste de formato.avi');
  }