class Data {
  String? name;

  String toString() {
    return "Hello $name";
  }
}

void main() {
  var joko = Data();
  joko.name = "joko";
  print(joko);
  print(joko.toString());
  var eko = "eko";
  eko.hashCode;
}
