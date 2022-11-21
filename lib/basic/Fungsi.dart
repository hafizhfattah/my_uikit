void main() {
  //tipedata_return nama_fungsi(parameter){body}
  var nama = "adhi";
  printName(nama);
  print(volumeKubus(4));
  perkenalan("rafi");
  saidHello("firstName");
  SayHello(lastname: "nugraha");
  sayFriends(
    firstname: "firstname",
    lastnane: '',
  );
  print(sum(2, 3));
  //anonymous function
  getValue(name: 'adhi', filter: (apa) => apa == 'gile' ? '*****' : apa);
}

String filterBadWord(String name) {
  return name == 'gile' ? '*****' : name;
}

//void type yang tidak mengembalikan data/return
void printName(String nama) {
  print("hello $nama");
}

int volumeKubus(int sisi) {
  return sisi * sisi;
}
//int tipe return

//tipe nama fungsi(parameter) => nilai

perkenalan(String nama) => print("perkenalkan nama ku $nama");

//[String? lastname] parameter optional bisa di isi atau tidak,jika tidak
//di isi maka akan menjadi null,ditandai dengan []
//optional bisa diberi default parameter
void saidHello(String firstName, [String lastname = '']) {
  print("Hello $firstName $lastname");
}

//named parameter ditandai dengan {} dan nilai defaultnya adalah true
//karena jika kita memberikan argumen ke parameter itu harus sesuai posisi
//named parameter untuk memudahkan problem tersebut
void SayHello({String? firstname, String? lastname}) {
  print("hello $firstname $lastname");
}

//require parameter
//requre parameter wajib di isi
//required parameter tidak perlu di beri ? karena itu wajib di isi

void sayFriends({required String firstname, required String lastnane}) {
  print("hello $firstname $lastnane");
}

//fungsi short expression tidak butuh {} dan jika return dia tidak
//membutuhkan keyword return

//tipe return namafungsi body{}
sum(int first, int second) => first + second;

//higher order function
//function yang menggunakan function sebagai parameter

void getValue({required String name, required String Function(String) filter}) {
  var filteredName = filter(name);
  print('Hi $filteredName');
}

//closure 
//kemampuan fungsi atau anonymous fungsi berintraksi dengan data2 sekitarnya/dalam
//scopenyac