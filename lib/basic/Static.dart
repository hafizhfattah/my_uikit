void main(List<String> args) {
  print(Application.name);
}

//static adalah syntax yang di gunakan untuk membuat field / method yang bisa
//di akses tanpa harus membuat objectnya
//biasanya di gunakan untuk utility

class Application {
  static final String name = 'Flutter';
}
