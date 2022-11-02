import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

final font = GoogleFonts.montserrat(
  letterSpacing: 1,
  fontWeight: FontWeight.w400,
);

final aspectRatios = [
  [1, 1],
  [1, 3],
  [3, 2],
  [16, 9],
  [9, 16],
];

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
