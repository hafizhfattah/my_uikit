
void main(List<String> args) {
  //Synchronous akan mengeksekusi statment sesuai waktunya
  fetchData();
  print("menunggu data");
}

Future<void> fetchData() {
  return Future.delayed(Duration(seconds: 2),
  ()=> print("fecth data"),
  );
}
