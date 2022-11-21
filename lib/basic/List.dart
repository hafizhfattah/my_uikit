void main() {
  List<dynamic> exlist = [true, false, 1, 2, 3, 4, "hello world"];
  //index dimulai dari 0
  print(exlist.runtimeType);
  print(exlist[1]);
  print(exlist.elementAt(0));
  //mengembalikan nilai list pada elemen tertentu
  print(exlist.length);
  //menghitung panjang list
  exlist.add("value");
  print(exlist);
  //menambahkan value ke list

  print("=======add all======");
  List<dynamic> Strlist = ["ok", "yes", "no"];
  Strlist.addAll(exlist);
  print(Strlist);
  //menambahkan list dengan list
  List<String> stlist = ["a", "c", "b"];
  stlist.sort();
  print(stlist);
  //mengurutkan list
  var newExlist = exlist.reversed.toList();
  print(newExlist);
  exlist.clear();
  print(exlist);

  List simpleList = [12, 12];
  print(simpleList);
}

List<dynamic> getList() {
  return [1];
}
