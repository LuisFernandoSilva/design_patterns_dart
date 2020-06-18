


import 'package:extra_design_patterns_dart/examples/creational/design_prototype/shape.dart';

class Rectangle implements Shape {
  //coordenados do retangulo
  int height;
  int width;
  int x;
  int y;
  //numero do id do clone
  int _hashCode;
  bool isClone = false;
  //metodo que verifica se o objeto e um clone ou nao;
  String get cloneStatus => isClone ? "is a clone" : "is an original gangster";

  Rectangle(this.height, this.width, this.x, this.y);
  //construtor que cria um retangulo conforme as cordenadas passadas 
  Rectangle.fromSource(Rectangle source) {
    height = source.height;
    width = source.width;
    x = source.x;
    y = source.y;
    _hashCode = source.hashCode;
    isClone = true;
  }
  //cria um clone com que foi passado pelo construtor
  @override
  Rectangle clone() {
    return Rectangle.fromSource(this);
  }
  //cria um id usando a hora do pc
  @override
  int get hashCode {
    if (_hashCode != null) return _hashCode;
    _hashCode = DateTime.now().millisecondsSinceEpoch;
    return _hashCode;
  }
  //verifica se o clone e o hascode sao iguais pra validação.
  @override
  bool operator ==(dynamic other) {
    if (other is! Rectangle) return false;
    Rectangle rect = other;
    return rect.isClone && rect.hashCode == hashCode;
  }

}