void main(List<String> args) {
  Avanza avanza = Avanza('Avanza', 'Brand Ava');
  print(avanza.name);
}

//saran: jika ingin membuat interface sangat di sarankan menggunakan abstrac
class Car {
  String name = '';

  void drive() {}

  int getTire() {
    return 0;
  }
}

abstract class GetBrand {
  String brand;
  GetBrand(this.brand);
  String getBrand();
}

class Avanza implements Car, GetBrand {
  @override
  String name;
  Avanza(this.name, this.brand);

  @override
  void drive() {
    print('Drive Acctived');
  }

  @override
  int getTire() {
    return 1;
  }

  @override
  String brand;

  @override
  String getBrand() {
    return 'Brand: ${this.brand}';
  }
}
