void main() {
  //employe tipe data Employe
  //dikarenakan tipe data sama(Employe) maka bisa berubah bentuk
  Employe employe = Karyawan("Tono");
  sayHello(Employe('name1'));
  print(employe.name);

  //contoh nya
  employe = Manager('Eko');
  sayHello(Manager('name2'));
  print(employe.name);

  employe = Karyawan('zero');
  sayHello(Karyawan('name3'));
  print(employe.name);
}

void sayHello(Employe employe) {
  print('Hello ${employe.name}');
}

//kemampuan object berubah bentuk
class Employe {
  String name = "Guest";
  Employe(this.name);
}

class Manager extends Employe {
  Manager(String name) : super(name);
}

class Karyawan extends Employe {
  Karyawan(String name) : super(name);
}
