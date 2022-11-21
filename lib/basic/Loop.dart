void main() {
  //for(initstatment;kondisi;poststatment)
  // int n = 10;

  // for (var i = 1; i <= n;) {
  //   print(i);
  //   i++;
  // }

  // List list = ["-", "\\", "|", "/"];

  // for (int i = 0; i < list.length; i++) {
  //   print(list[i]);
  // }
  // //while

  // var counter = 1;
  // do {
  //   print('counter ke $counter');
  //   counter++;
  // } while (counter <= 10);

  // for (var i in list) {
  //   print(i);
  // }

  int a = 8;
  int i = 1;
  int j = 1;
  while (i <= a) {
    while (j <= a) {
      print(j);
      j += 1;
    }
    i *= 2;
  }
}
