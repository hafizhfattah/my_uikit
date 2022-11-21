void main() {
  var nilai = 100;

  if (nilai >= 91 && nilai <= 100) {
    print("sangat baik");
  } else if (nilai >= 81 && nilai <= 90) {
    print("baik");
  } else if (nilai >= 71 && nilai <= 80) {
    print("cukup");
  } else if (nilai >= 61 && nilai <= 70) {
    print("kurang");
  } else {
    print("nilai invalid");
  }

  print((nilai >= 91 && nilai <= 100)
      ? "sangat baik"
      : (nilai >= 81 && nilai <= 90)
          ? "baik"
          : (nilai <= 71 && nilai <= 80)
              ? "cukup"
              : (nilai >= 60 && nilai <= 70));
              
  var makanan = 'A';

  switch (makanan) {
    case 'A':
      print("Sangat enak");
      break;
    case 'B':
      print("enak");
      break;
    case 'C':
      print("cukup");
      break;
    default:
      print("nilai invalid");
  }
}
