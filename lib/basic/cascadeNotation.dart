void main(List<String> args) {
  // var user = User();
  // user.name = 'zero';
  // user.age = 18;
  // print(user.name);

  //cascade notation
  //mengakses metode agar lebih mudah
  var user = User()
    ..name = 'zero'
    ..age = 18;
  print(user.name);
}

class User {
  String? name;
  int? age;
}
