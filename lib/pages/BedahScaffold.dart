// ignore_for_file: avoid_print, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BedahScaffold extends StatelessWidget {
  const BedahScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Basic
      appBar: AppBar(),
      body: Center(
        child: TextButton(
          onPressed: Get.back,
          child: const Text(
            'Center, Back?',
            style: TextStyle(),
          ),
        ),
      ),

      //Location
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      bottomSheet: const Text('Bottom Shit'),
      persistentFooterButtons: const [Text('Footer Button')],
      bottomNavigationBar: const Text('Bottom Navbar'),

      //Drawer
      drawerScrimColor: Colors.amber,
      drawer: const Drawer(),
      endDrawer: const Drawer(),
      onEndDrawerChanged: (isOpened) {
        print('Drawer Kanan Open');
      },
      onDrawerChanged: (isOpened) {
        print('Drawer Kiri Open');
      },
    );
  }
}
