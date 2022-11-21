class Mydata<T> {
  T data;
  Mydata(this.data);
  T getData() {
    return data;
  }
}

void main(List<String> args) {
  var dataString = Mydata<String>("Hello World");
  print(dataString.data);
  var dataInt = Mydata<int>(120);
  print(dataInt.data);
}
