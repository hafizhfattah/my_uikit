import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils.dart';

class GetXPage extends StatefulWidget {
  const GetXPage({super.key});

  @override
  State<GetXPage> createState() => _GetXPageState();
}

class _GetXPageState extends State<GetXPage> {
  final MyController c = Get.find();
  final font = GoogleFonts.poppins(
    letterSpacing: 1,
    fontWeight: FontWeight.w400,
  );

  final TextEditingController isText = TextEditingController(text: '');
  List jumlah = [100, 200, 300];
  String? name;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "GetX",
          style: font,
        ),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          children: [
            // Row(
            //   children: [
            //     Text(
            //       "DarkMode",
            //       style: font,
            //     ),
            //     const Spacer(),
            //     Switch.adaptive(
            //       value: c.isActive.value,
            //       onChanged: (bool newValue) {
            //         setState(() {
            //           c.isActive.value = newValue;
            //         });
            //       },
            //     ),
            //   ],
            // ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(64.0),
                    ),
                  ),
                  onPressed: () => c.decrement(),
                  child: Text(
                    "-1",
                    style: font,
                  ),
                ),
                Obx(() {
                  return Text(
                    "Qyt ${c.count}",
                    style: font,
                  );
                }),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(64.0),
                    ),
                  ),
                  onPressed: c.increment,
                  child: Text(
                    "+1",
                    style: font,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextFormField(
              onChanged: (value) {
                name = value;
              },
              controller: isText,
              style: font,
              maxLength: 20,
              decoration: InputDecoration(
                labelStyle: font,
                helperStyle: font,
                labelText: 'Barang',
                // enabledBorder: const UnderlineInputBorder(
                //   borderSide: BorderSide(),
                // ),
                helperText: "Masukan Nama Barang",
              ),
            ),
            const SizedBox(
              height: 14.0,
            ),
            SizedBox(
              height: 35,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(64.0),
                  ),
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SecondPage(
                            name: name,
                          )),
                ),
                child: Text(
                  "Save",
                  style: font,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({
    Key? key,
    this.name,
  }) : super(key: key);

  final String? name;

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final font = GoogleFonts.poppins(
    letterSpacing: 1,
    fontWeight: FontWeight.w400,
  );

  @override
  Widget build(BuildContext context) {
    final MyController c = Get.find();
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          widget.name ?? "Qty ${c.count} ",
          style: font,
        ),
      ),
    );
  }
}
