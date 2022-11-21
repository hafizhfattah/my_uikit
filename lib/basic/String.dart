void main() {
  print("Hello World");

  var name = ' Voyager I ';
  print(name.runtimeType);
  print("\$ $name");
  //check tipe data
  //string
  var year = 1977;
  //number
  var antennaDiameter = 3.7;
  //float
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  //tipe data list
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg'
  };
  //tipe data map/dictionary

  print(name.trim());
  //menghilangkan spasi
  print(name.contains("V"));
  //mengecek index
  print(name.indexOf("V"));
  //mengecek index
  print(name.startsWith(" "));
  //mengecek awal index
  print(name.endsWith(" "));
  //mengecek akhir index
  print(name.isEmpty);
  //mengecek apakah kosong
  print("nama ini tidak kosong: ${name.isEmpty}");
  print(name.length);
  //menghitung panjang index
  print(year);
  print(antennaDiameter);
  print(flybyObjects);
  print(image);

  String ListHewan = "babi kucing kodok";
  var DaftarHewan = ListHewan.split(" ");
  //mengubah menjadi list dan memfilter
  print(DaftarHewan);
}
