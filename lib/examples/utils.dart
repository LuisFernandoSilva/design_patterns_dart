//classe concreta com metodos que se tem em bibliotecas no java e nao no dart
class Utils {
  //metodo que substitui o do java para comparar as strings e converte para letras minusculas e retorna false ou true
  bool equalsIgnoreCase(String a, String b) =>
      (a == null && b == null) ||
      (a != null && b != null && a.toLowerCase() == b.toLowerCase());
}
