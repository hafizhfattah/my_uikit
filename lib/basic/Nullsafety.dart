void main(List<String> args) {
  int? age = null;

  if (age == null) {
    print(age);
  }
  String? guest = null;
  //default value untull tipe data null
  String guestName2 = guest ?? "guest2";
  print(guestName2);

  var guestName = guest == null ? "guest" : guest;
  print(guestName);

  //konversi paksa dari tipe data nullable ke non nullable dengan menggunakan kata seru
  //setelah nama variablenya
  //koneskuensinya jika ternyata datanya null maka otomatis akan terjadi error ketika
  //aplikasi berjalan

  int? nullableNumber = 10;
  int nonNonnullableNumbew = nullableNumber;
  print(nonNonnullableNumbew);

  //mengakses nullable member dengan tanda tanya ?
  //konsekuanse data tersebut bisa menjadi null

  int? intNumber;
  double? datadouble = intNumber?.toDouble();
  print(datadouble);
}
