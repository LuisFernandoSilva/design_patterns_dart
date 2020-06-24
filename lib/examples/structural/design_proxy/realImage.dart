//classe concreta que implementa a interface image

import 'package:extra_design_patterns_dart/examples/structural/design_proxy/image.dart';

class RealImage implements Image {
  String _fileName;

  RealImage(String fileName){
    this._fileName = fileName;

     loadFromDisk(_fileName);
  }

  @override
  void display() {
    print('Mostrando: $_fileName');
  }

  void loadFromDisk(String fileName) {
    print('Carregando: $fileName');
  }
}
