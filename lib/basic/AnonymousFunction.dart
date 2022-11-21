void main(List<String> args) {
  //anonympus function biasanya digunakan untuk menjadi parameter
//pada fungsi yang menerima fungsi

  var uuperFunction = (String name) {
    return name.toUpperCase();
  };

  String toLowerCase(String name) => name.toLowerCase();

  print(uuperFunction("eko"));

  print(toLowerCase("ADHI"));

  sayhello("joko", (name) => name.toUpperCase());

  sayhello("KURNIAWAN", (String name) {
    return name.toLowerCase();
  });
}

//higher order function
void sayhello(String name, String Function(String) filter) {
  print("hello ${filter(name)}");
}
