void main(List<String> args) {
  var data = Database.get();
  var data2 = Database.get();

  print(data == data2);
}

//factory mengatur type return constructor
class Database {
  Database() {
    print('Database connected');
  }

  static Database database = Database();

  factory Database.get() {
    return database;
  }
}


