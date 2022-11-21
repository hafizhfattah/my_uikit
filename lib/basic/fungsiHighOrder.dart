void main(List<String> args) {
  sayHello("gila", filterBadWord);
}

//String:tipe data return
//Function harus besar
//filter nama parameter
void sayHello(String name, String Function(String) filter) {
  var filteredName = filter(name);
  print("hello $filteredName");
}

String filterBadWord(String name) {
  if (name == "gila") {
    return "****";
  } else {
    return name;
  }
}
