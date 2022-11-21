void main() {
  var b = RekeningBank(namaPemilik: "adhi", namaBank: "bca", saldo: 1234);
  b.getBank();
  b.setSaldo = 100000;
  print(b.getSaldo);
  print(b.getNama);
  b.setNamaPemilik = "tono";
  print(b.getNama);
  print("=" * 50);
  var c = RekeningBank(namaPemilik: "sakip", saldo: 5000, namaBank: 'sudo');
  c.getBank();
}



class RekeningBank {
  var namaPemilik;
  var namaBank;
  var saldo;
  //property tidak bisa null

  set setNamaPemilik(String Nama) {
    this.namaPemilik = Nama;
  }

  set setSaldo(int saldoBaru) {
    this.saldo = saldoBaru;
  }
  //getter setter digunakan untuk menetapkan suatu nilai pada value maupun mengambilnya

  int get getSaldo {
    return saldo;
  }

  String get getNama {
    return namaPemilik;
  }

  RekeningBank({this.namaBank, this.namaPemilik, this.saldo});
  //parameter contructor jadi optional bisa diisi atau tidak dengan {}
  RekeningBank.Owo({this.namaBank = "Owo", this.namaPemilik, this.saldo});

  getBank() {
    print(
        "cek nama bank ${this.namaBank} dan pemilik ${this.namaPemilik} dan saldo ${this.saldo}");
  }

  transfer() {
    print("transfer");
  }

  ambilSaldo() {
    print("ambil saldo");
  }
}
