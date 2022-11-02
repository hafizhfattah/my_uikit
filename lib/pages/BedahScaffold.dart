// ignore_for_file: avoid_print, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils.dart';

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
          child: Text(
            'Center, Back?',
            style: font,
          ),
        ),
      ),

      //Location
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 24.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      bottomSheet: Text('Bottom Shit', style: font),
      persistentFooterButtons: [Text('Footer Button', style: font)],
      bottomNavigationBar: Text('Bottom Navbar', style: font),

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
