void main() {
  int index = 0;
  while (index < 10) {
    print(index);
    index++;
  }

  List anak = ["joko", "tono", "deko"];

  while (index < anak.length) {
    print(anak[index]);
    index++;
  }

  do {
    if (index == 5) {
      print("index saat ini $index");
    }
    print(index);
    index++;
  } while (index < 10);
}
