import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'pages/3dDonut.dart';
import 'utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(MyController());
    return Obx(() {
      return GetMaterialApp(
        title: "MYKIT",
        defaultTransition: Transition.cupertino,
        debugShowCheckedModeBanner: false,
        theme: c.isActive.value
            ? ThemeData.dark(
                useMaterial3: true,
              )
            : ThemeData.light(
                useMaterial3: true,
              ),
        home: const Donut(),
      );
    });
  }
}
