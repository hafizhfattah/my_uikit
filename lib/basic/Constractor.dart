void main(List<String> args) {
  // var bro = HeroKu("hello");
  // HeroKu.zero("joko");

  var Zero = Person(name: 'zero', address: 'jakarta');
  print(Zero.getValue('name'));
  print(Zero.result);

  var ZoUpper = Person.Upper('Upper', 'address');
  print(ZoUpper.name!.toUpperCase());
  print(ZoUpper.address);

  var ZoLower = Person.Upper('Lower', 'address');
  print(ZoLower.name!.toLowerCase());
  print(ZoLower.address);

  var point1 = const immutablePoint(10, 10);
  var point2 = const immutablePoint(10, 10);

  print(point1 == point2);
}

class HeroKu {
  HeroKu(String name) {
    print("hello $name");
  }
  factory HeroKu.zero(String name) => HeroKu(name);
}

class Person {
  String? name;
  String? address;
  String? result;

  //initialized
  Person({required this.name, required this.address})
      : result = name?.toUpperCase() {
    print('The result $result');
  }
  //named constructor and redirecting constructor
  Person.Lower(String name, String address)
      : this(name: name, address: address);
  //redirecting constructor to named constructor
  Person.Upper(String name, String address) : this.Lower(name, address);

  String getValue(name) {
    return '${this.name} is boss';
  }
}

class immutablePoint {
  final x;
  final y;

  const immutablePoint(this.x, this.y);
}
