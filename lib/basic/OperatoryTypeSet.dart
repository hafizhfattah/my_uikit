void main() {
  //operator typeset
  // operator as typecast , melakukan konvesi tipe data secara paksa
  // is true jika object sesuai tipe data
  // is! true jika object tidak sesuai tipe data
  dynamic variable = 100;

  var variableInt = variable as int;

  print(variableInt);
  print(variable is! String);
}
