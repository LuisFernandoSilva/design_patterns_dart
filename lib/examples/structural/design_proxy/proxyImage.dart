
import 'package:extra_design_patterns_dart/examples/structural/design_proxy/image.dart';
import 'package:extra_design_patterns_dart/examples/structural/design_proxy/realImage.dart';

class ProxyImage implements Image {

  RealImage _realImage;
  String _fileName;

  ProxyImage(this._fileName);

  @override
  void display() {
    if (_realImage == null) {
      _realImage = RealImage(_fileName);
    }
    _realImage.display();
  }
  
}