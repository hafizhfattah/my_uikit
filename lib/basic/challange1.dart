void main() {
  String Nama = "Rifqi Seafood";
  int Tahun = 2000;
  String Pemilik = "Rifqi Eka Hardianto";
  String Alamat = "Jl.Bhayangkara Jakarta";
  int Telepon = 08123456789;
  bool buka = true;
  List<Map> DaftarMakanan = [
    {"nama": "Keptiting rebus", "harga": 400000},
    {"nama": "Nasi goreng", "harga": 400000},
    {"nama": "sate cumi", "harga": 400000},
  ];
  List<Map> DaftarMinuman = [
    {"nama": "teh", "harga": 400000},
    {"nama": "jus", "harga": 400000},
    {"nama": "isoplus", "harga": 400000},
  ];
  Map daftarList = {
    "nama": Nama,
    "tahun": Tahun,
    "pemilik": Pemilik,
    "alamat": Alamat,
    "buka": buka,
    "daftarmakanan": DaftarMakanan,
    "daftarminuman": DaftarMinuman
  };
  print(daftarList);
}
