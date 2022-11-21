void main(List<String> args) async {
  button();
  await getData(20).then((value) => print(value)).catchError((err) {
    print(err);
  });
  next();
}

void button() {
  print("button 1");
}

void next() {
  print("next");
}

Future<String> getData(int data) {
  int stock = 5;
  return Future.delayed(Duration(seconds: 2), () {
    if (stock > data) {
      return "berhasil membeli";
    } else {
      throw "gagal membeli";
    }
  });
}
