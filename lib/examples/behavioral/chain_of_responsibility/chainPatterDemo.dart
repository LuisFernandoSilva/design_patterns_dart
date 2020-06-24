import 'package:extra_design_patterns_dart/examples/behavioral/chain_of_responsibility/abstractLogger.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/chain_of_responsibility/consoleLogger.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/chain_of_responsibility/errorLogger.dart';
import 'package:extra_design_patterns_dart/examples/behavioral/chain_of_responsibility/fileLogger.dart';

/**
 * Como o nome sugere, o padrão da chain of responsibility cria uma cadeia de objetos receptores
 * para uma solicitação. Esse padrão desacopla o remetente e o destinatário de uma solicitação com 
 * base no tipo de solicitação. Nesse padrão, normalmente cada receptor contém referência a outro receptor.
 * Se um objeto não puder lidar com a solicitação,ele passará o mesmo para o próximo receptor e assim por diante.
 * >>Implementação
 * Criamos uma classe abstrata AbstractLogger com um nível de log.
 * Em seguida, criamos três tipos de registradores que estendem o AbstractLogger. 
 * Cada registrador verifica o nível da mensagem em seu nível e imprime adequadamente, 
 * caso contrário, não imprime e passa a mensagem para o próximo registrador.
 * 
 */

void main(List<String> args) {

  AbstractLogger loggerChain = getChainOFLoggers();

  loggerChain.logMessage(AbstractLogger.info, 'Isto e uma informação');
  loggerChain.logMessage(AbstractLogger.debug, 'Isto e uma debug de nivel informação');
  loggerChain.logMessage(AbstractLogger.error, 'Isto e uma message de erro');

}

AbstractLogger getChainOFLoggers() {
  /**
   *  diferentes tipos de loggers Atribua a eles níveis de erro e defina o próximo logger
   * em cada logger O próximo logger em cada logger representa a parte da cadeia.
   */
  AbstractLogger errorLogger = ErrorLogger(AbstractLogger.error);
  AbstractLogger fileLogger = FileLogger(AbstractLogger.debug);
  AbstractLogger consoleLogger = ConsoleLogger(AbstractLogger.info);

  errorLogger.setnextLogger(fileLogger);
  fileLogger.setnextLogger(consoleLogger);
  return errorLogger;
}
