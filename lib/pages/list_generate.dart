import 'package:google_fonts/google_fonts.dart';
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ListGenerate extends StatelessWidget {
  const ListGenerate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Wrap(
            children: List.generate(
              10,
              (index) => Container(
                margin: const EdgeInsets.all(10),
                height: 200,
                width: 185,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 24,
                      offset: Offset(0, 11),
                    ),
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 140.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://picsum.photos/id/${index + 200}/1000",
                          ),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(
                            16.0,
                          ),
                          topRight: Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 14, left: 14),
                      height: 60.0,
                      width: 200,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 24,
                            offset: Offset(0, 11),
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(
                            16.0,
                          ),
                          bottomRight: Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Kentang Bakar ${index + 1}',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.w800),
                          ),
                          Text(
                            'Breakfest',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                                fontSize: 10,
                                color: Colors.grey,
                                fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
