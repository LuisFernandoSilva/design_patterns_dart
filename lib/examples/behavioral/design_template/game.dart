//classe abstract com o metodo template final
abstract class Game {
  void initialize();
  void startPlay();
  void endPlay();
  //no dart nao tem metodo final
  void play(){
      initialize();
      startPlay();
      endPlay();
  }  
}