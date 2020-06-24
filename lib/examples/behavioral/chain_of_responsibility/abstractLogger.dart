//classe abstracta de logs

abstract class AbstractLogger {
  static int info = 1;
  static int debug = 2;
  static int error = 3;
  int level;

  //proximo elemento da cadeia de responsabilidade
  AbstractLogger _nextLogger;

  void setnextLogger(AbstractLogger nextLogger) {
    this._nextLogger = nextLogger;
  }

  void logMessage(int level, String message) {
    if (this.level <= level) {
      write(message);
    }
    if (_nextLogger != null) {
      _nextLogger.logMessage(level, message);
    }
  }

  void write(String message);
}
