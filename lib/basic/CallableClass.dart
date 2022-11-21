void main(List<String> args) {
  var sum = total(1, 2);
  print(sum());
}

//alias
//digunakan ketika terdapat nama class yang sama 
typedef total = Sum;

class Sum {
  int x;
  int y;

  Sum(this.x, this.y);
  //hanya berlaku method call
  int call() {
    return y + x;
  }
}
