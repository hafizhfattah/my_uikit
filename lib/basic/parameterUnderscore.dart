class Hobby {
  String name;
  Function(String name) getHobby;
  Hobby(this.name, {required this.getHobby});

  void run() {
    getHobby(name);
  }
}

void main(List<String> args) {
  var ex = Hobby("adhi", getHobby: (_) {
    print("hello adhi");
  });

  ex.run();
}
