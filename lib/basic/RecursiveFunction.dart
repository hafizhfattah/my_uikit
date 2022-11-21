void main(List<String> args) {
  //Recursive function adalah fungsi yang memanggil function dirinya sendiri
  // print(FactorialLoop(10));
  loop(100);
}

//perbedaan jika memakai recursive function line code lebih sedikit
// int FactorialLoop(int value) {
//   var result = 1;
//   for (var i = 1; i <= value; i++) {
//     result *= i;
//   }

//   return result;
// }

void loop(int value) {
  if (value == 0) {
    print("Selesai");
  } else {
    print("perulangan ke $value");
    loop(value - 1);
  }
}
//stackoverflow error adalah error dimana stack pemanggilan terlalu banyak
//karena ketika memanggil function lain maka stack akan menumpuk terus dan
//jika terlalu dalam maka bisa eror stackoverflow
