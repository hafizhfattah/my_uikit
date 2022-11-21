void main(List<String> args) {
  var Custom = Customer('name', CustomerLevel.Vip);
  print(Custom.getValue());
  print(CustomerLevel.values);
}

//untuk membuat tipe data yang sudah jelas

enum CustomerLevel { Regular, Vip }

class Customer {
  String name;
  CustomerLevel level;
  Customer(this.name, this.level);
  String getValue() {
    return 'Hello $name you\'re $level';
  }
}
