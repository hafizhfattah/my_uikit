class CheckStr {
  static bool isUpperCase(String str) {
    return str.contains(RegExp(r'[A-Z]')) ? true : false;
  }
}
