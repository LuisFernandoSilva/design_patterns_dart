import 'package:extra_design_patterns_dart/examples/structural/design_flyweight/shape.dart';

class Circle implements Shape {
  String _color;
  int _x;
  int _y;
  int _radius;
  Circle(this._color);

  void setX(int x) {
    this._x = x;
  }

  void setY(int y) {
    this._y = y;
  }

  void setRadius(int radius) {
    this._radius = radius;
  }

  @override
  void draw() {
    print(
        'Circulo desenhando de cor: $_color , X: $_x, Y: $_y, Radius: $_radius');
  }
}
