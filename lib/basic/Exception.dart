import 'dart:ffi';

void main(List<String> args) {
  // Validation.validate(' ', ' ');

  try {
    Validation.validate(' ', ' ');
  } on ValidationException catch (e) {
    print('error : ${e.message}');
  } catch (e) {
    print('error2 : ${e.toString()}');
  } finally {
    print('finally');
  }
}

//Menghandle error
class Validation {
  static Void validate(String username, String password) {
    if (username == " ") {
      throw ValidationException('Username is blank');
    } else if (password == ' ') {
      throw ValidationException('Password is blank');
    }
    throw ValidationException('unhandle error');
  }
}

class ValidationException implements Exception {
  String message;
  ValidationException(this.message);
}
