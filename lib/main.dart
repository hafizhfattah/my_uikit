import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:my_uikit/pages/BedahScaffold.dart';
import 'package:my_uikit/pages/ListGenerate.dart';
import 'package:my_uikit/pages/card1.dart';
import 'package:my_uikit/pages/draggable.dart';
import 'package:my_uikit/pages/fetchapi.dart';
import 'package:my_uikit/pages/getx_page.dart';

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
        home: const ListMenuApp(),
      );
    });
  }
}

class ListMenuApp extends StatelessWidget {
  const ListMenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          padding: const EdgeInsets.all(12),
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(64.0),
                  ),
                ),
                onPressed: () => Get.to(const Donut()),
                child: const Text("3d Donut"),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            SizedBox(
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(64.0),
                  ),
                ),
                onPressed: () => Get.to(const BedahScaffold()),
                child: const Text("BedahScaffold"),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            SizedBox(
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(64.0),
                  ),
                ),
                onPressed: () => Get.to(const Card1()),
                child: const Text("Card"),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            SizedBox(
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(64.0),
                  ),
                ),
                onPressed: () => Get.to(const DraggablePage()),
                child: const Text("Draggable Bottom Sheet"),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            SizedBox(
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(64.0),
                  ),
                ),
                onPressed: () => Get.to(const FetchingApi()),
                child: const Text("Fetching API"),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            SizedBox(
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(64.0),
                  ),
                ),
                onPressed: () => Get.to(const GetXPage()),
                child: const Text("GetXPage"),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            SizedBox(
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(64.0),
                  ),
                ),
                onPressed: () => Get.to(const Listgenerate()),
                child: const Text("Listgenerate"),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
          ]),
    );
  }
}
