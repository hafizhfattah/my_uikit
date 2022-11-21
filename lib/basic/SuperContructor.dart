class Shape {
  String? x;
  Shape(this.x);
  int getCorner() {
    return 0;
  }
}

//super di gunakan untuk mengakses parent class object saat ini
class Rectangle extends Shape {
  Rectangle(String x) : super(x) {
    print('Create Rectangle');
  }
  int getCorner() {
    return 4;
  }

  int getParentCorner() {
    return super.getCorner();
  }
}

void main(List<String> args) {
  var rectangle = Rectangle("alas");
  print(rectangle.getCorner());
  print(rectangle.getParentCorner());
}
