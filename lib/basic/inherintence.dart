void main(List<String> args) {
  var avanta = Mobil(roda: 10);
  avanta.klakson();
  avanta.jumlahroda(avanta.roda);
  avanta.berjalan();
  var yamaha = Motor(roda: 2);
  yamaha.jumlahroda(yamaha.roda);
  yamaha.berjalan();
}

abstract class Kendaraan {
  int roda = 0;
//fungsi dari abstrac adalah sebagai class utama yang akan mewariskan method/property
//abstract class tidak bisa dijadikan object karena abstract class diibaratkan sebagai kerangka
  String suara = "auuuu";

  void klakson() {
    print(suara);
  }

  void jumlahroda(int roda) {
    print("jumlah roda parent: $roda");
  }

  berjalan();
}

//menurunkan kemampuan class ke class lain
class Mobil extends Kendaraan {
  int roda = 0;
  Mobil({required this.roda});

  void jumlahroda(int roda) {
    print("jumlah roda child : $roda");
    super.jumlahroda(5);
  }

  @override
  berjalan() {
    print("mobil berjalan....");
  }
}

class Motor extends Kendaraan {
  int roda = 0;
  int? result;
  Motor({required this.roda});
  @override
  void jumlahroda(int roda) {
    print("roda di motor $roda");
    super.jumlahroda(roda);
  }

  @override
  berjalan() {
    print("motor berjalan....");
  }
}
