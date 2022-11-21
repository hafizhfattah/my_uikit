class Person {
  Person() {
    print("Database Cretaed");
  }
  static Person database = Person();
  factory Person.crete() {
    return database;
  }
}

void main(List<String> args) {
  Person joko = Person.crete();
  Person tono = Person.crete();
  print(joko == tono);
}
