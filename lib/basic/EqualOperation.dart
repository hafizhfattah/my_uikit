void main(List<String> args) {
  var category1 = Category(1, 'name');
  var category2 = Category(2, 'name');
  print(category1 == category2);
}


class Category {
  String name;
  int id;

  Category(this.id, this.name);
  //membandingkan dua buah object
  //secara default pengecekan kesamaan object dilihat dari lokasi memory
  //terkadang kita butuh implementasi logika di == oleh karena itu bisa di override
  bool operator == (Object other) {
    if (other is Category) {
      if (id != other.id) {
        return false;
      } else {
        return true;
      }
    } else {
      return true;
    }
  }
}
