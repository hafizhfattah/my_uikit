void main(List<String> args) {
  var sapi = Sapi();
  sapi.methodBerkakiEmpat();
}

mixin Mamalia {
  void methodMamalia() {
    print("method mamalia");
  }
}

mixin BerkakiEmpat {
  void methodBerkakiEmpat() {
    print("method berkaki empat");
  }
}

class Sapi with Mamalia, BerkakiEmpat {
  void methodSapi() {
    print("method sapi");
  }
}
