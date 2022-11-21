class Person {
  String? username;
  int? age;
  String getUser() {
    return "Hello ${this.username} ${this.age}";
  }
}

void main(List<String> args) {
  Person P = Person()
    ..username = "eko"
    ..age = 9;
  print(P.getUser());
}
