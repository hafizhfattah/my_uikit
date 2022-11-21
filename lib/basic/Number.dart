void main() {
  var angka = 20;
  print(angka.runtimeType);
  //check tipe data
  int intnum = 21;
  //integer
  print(intnum);
  double doublenum = 4.2;
  print(doublenum);

  print(doublenum.floor());
  //membulatkan ke bawah
  print(doublenum.ceil());
  //membulatkan ke atas
  print(doublenum.round());
  //membulatkan value
  print(doublenum.toStringAsFixed(4));
  //menampilkan banyak angka dibelakang koma
  print(doublenum.toStringAsPrecision(1));
  //menampilkan banyak angka dibelakang koma dari depan
}
