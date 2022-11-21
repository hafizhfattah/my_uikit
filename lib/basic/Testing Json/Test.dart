void main(List<String> args) {
  var result = spinWords('This is another test');
  print(result);

  var arr1 = ["adhiarr1", "joko", "Tono"]
      .map((e) => '$e!')
      //.reduce sama seperti .map tapi hanya mereturn 1 value
      .reduce((value, element) => value.toUpperCase());
  print(arr1);

  var arr2 = ["joko", "another"];
  print(arr2.join(' '));

  var map = {1: "Home", 2: "Logout"};

  print(map);
}

String spinWords(String str) {
  var a = str.split(' ');
  print(a);
  return str
      .split(' ')
      //.map digunakan untuk mendapatkan setiap element array/map dan
      // akan mereturn kan sesuai tipenya
      .map((e) => e.length > 4 ? e.split('').reversed.join() : e)
      .join(' ');
}
