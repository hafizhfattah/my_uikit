void main() {
  var adhi = Ewallet("adhi");
  print(adhi.getNama);
  print(adhi.getSaldo);
  print(adhi.getMutasi);
  adhi.transfer(1000);
  print(adhi.getMutasi);
  print(adhi.request(500));
  print(adhi.getSaldo);
}

class Ewallet {
  String namaPemilik;
  List mutasi = [];
  int saldo = 2000;

  get getNama {
    return namaPemilik;
  }

  get getSaldo {
    return saldo;
  }

  get getMutasi {
    return mutasi;
  }

  set setNamaPemilik(String nama) {
    this.namaPemilik = nama;
  }

  set setMutasi(List mutasi) {
    this.mutasi.add(mutasi);
  }

  set setSaldo(int saldo) {
    this.saldo = saldo;
  }

  Ewallet(this.namaPemilik);

  transfer(int nominal) {
    saldo -= nominal;
    addMutasi("transfer $nominal");
  }

  request(int nominal) {
    saldo += nominal;
    addMutasi("request $nominal");
  }

  addMutasi(String transaksi) {
    mutasi.add(transaksi);
  }
}
