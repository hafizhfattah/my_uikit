// ignore_for_file: unused_local_variable

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:my_uikit/pages/fullscaffold.dart';
import 'package:my_uikit/pages/furniture_page.dart';
import 'package:my_uikit/pages/list_generate.dart';
import 'package:my_uikit/pages/draggable.dart';
import 'package:my_uikit/pages/fetchapi.dart';
import 'package:my_uikit/pages/getx_page.dart';

import 'pages/3dDonut.dart';
import 'pages/pip_listvideoplayer.dart';
import 'pages/pip_videoplayer.dart';
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
    return SelectionArea(
      child: Scaffold(
        body: SafeArea(
          child: ListView(
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
                    child: Text("3d Donut", style: font),
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
                    onPressed: () => Get.to(const FullScaffold()),
                    child: Text("Full Scaffold", style: font),
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
                    child: Text("Draggable Bottom Sheet", style: font),
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
                    child: Text("Fetching API", style: font),
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
                    child: Text("GetXPage", style: font),
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
                    onPressed: () => Get.to(const ListGenerate()),
                    child: Text("List Generate", style: font),
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
                    onPressed: () => Get.to(const PipVideoPlayer()),
                    child: Text("PIP VideoPlayer ~PIP Work On Android",
                        style: font),
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
                    onPressed: () => Get.to(const PipListVideoPlayer()),
                    child: Text("PIP ListVideoPlayer ~PIP Work On Android",
                        style: font),
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
                    onPressed: () => Get.to(const FurniturePage()),
                    child: Text("Furniture Page", style: font),
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
              ]),
        ),
      ),
    );
  }
}
