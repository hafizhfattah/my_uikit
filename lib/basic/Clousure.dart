void main(List<String> args) {
  var counter = 0;

  void increment() {
    print("increment");
    counter++;
  }

  increment();
  print(counter);
  //menambah satu karena fungsi akan menjalankan code ketika fungsi itu dipanggil
  
}
