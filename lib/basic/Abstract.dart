abstract class Animal {
  String? name;
  //abstrac method
  //tidak boleh ada block code
  String run();
}

class Cat extends Animal {
  Cat(String name) {
    this.name = name;
  }
  @override
  String run() {
    return "${this.name} Berjalan";
  }
}
//abstrac class tidak bisa membuat object secara langsung
//hanya bisa di turunkan/hanya bisa menjadi parent
void main(List<String> args) {
  Cat joko = Cat("Kucing");
  print(joko.run());
}
