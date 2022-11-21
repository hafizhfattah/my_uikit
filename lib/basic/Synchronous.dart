// void main(List<String> args) {
//   //Synchronous akan mengeksekusi statment sesuai bloknya
//   fetchData();
//   print("data telah di print");
// }

// fetchData() {
//   return print("fecth data");
// }

void main() {
  var joko = Karyawan();
  print(joko.sayHello());
}

class Manager {
  String? name;

  String sayHello() {
    return "Hello ${this.name}";
  }
}

class Karyawan extends Manager {
  String sayHello() {
    return "Anjir";
  }
}
