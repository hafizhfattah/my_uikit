void main() {
  var angka = 3;
  print((angka % 2 == 2) ? "genap" : (angka ==3) ? "angka 3" : "default");

  var num1 = null;
  var num2 = num1 ?? true;
  print(num2);
}
