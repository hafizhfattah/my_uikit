import 'package:get/get.dart';

//GetxController
class MyController extends GetxController {
  //Declaration
  var count = 0.obs;

  var isActive = true.obs;

  //Function
  void changeTheme() => isActive.value = !isActive.value;

  void increment() => count.value += 1;

  void decrement() {
    if (count < 1) {
      return;
    }
    count.value--;
  }
}
