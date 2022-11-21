void main(List<String> args) {
  //ketika mengakses width sebenarnya yang di panggil adalah _widht
  var rectangle = Rectangle();
  rectangle._width = 10;
  print(rectangle._width);
}

class Rectangle {
  int _width = 0;
  int _height = 0;

  int get width => _width;

  set width(int value) => _width = value;

  int get height => _height;

  set height(int value) {
    _height = value;
  }
}
