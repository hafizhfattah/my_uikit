import 'dart:convert';

void main(List<String> args) {
  var kelas = 8;
  var a = json.encode({"nama": "adhi", "kelas": kelas});
  print(a);
}
