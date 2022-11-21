void main(List<String> args) {
  int n = 5;

  for (int i = 0; i < n; i++) {
    var start = '*';
    for (int j = 0; j < i; j++) {
      start += '*';
    }
    print(start);
  }

  for (int i = 0; i < n; i++) {
    var start = '*';
    for (int j = n; j > i; j--) {
      start += '*';
    }
    print(start);
  }
}
