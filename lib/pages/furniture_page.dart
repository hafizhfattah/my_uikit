import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils.dart';

class FurniturePage extends StatefulWidget {
  const FurniturePage({super.key});

  @override
  State<FurniturePage> createState() => _FurniturePageState();
}

class _FurniturePageState extends State<FurniturePage> {
  //Declaration
  final coklat = const Color.fromRGBO(154, 147, 144, 1);

  bool isActive1 = true;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Home",
                style: GoogleFonts.montserrat(
                  letterSpacing: 1,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isActive1 = !isActive1;
                  });
                },
                child: const Icon(
                  CupertinoIcons.arrow_2_circlepath,
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            controller: ScrollController(),
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: Text(
                      isActive1
                          ? "Discover the most modern furniture"
                          : "Available Now!",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.montserrat(
                        color: Colors.brown[800],
                        fontSize: 22,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  TabBar(
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.label,
                    splashFactory: NoSplash.splashFactory,
                    splashBorderRadius: BorderRadius.circular(20),
                    labelStyle: GoogleFonts.montserrat(
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                    ),
                    unselectedLabelStyle: GoogleFonts.montserrat(
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                    ),
                    isScrollable: true,
                    indicator: BubbleTabIndicator(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      indicatorRadius: 20,
                      indicatorHeight: 35.0,
                      indicatorColor: Colors.brown[200]!,
                      tabBarIndicatorSize: TabBarIndicatorSize.label,
                    ),
                    tabs: const [
                      Tab(
                        text: "All",
                      ),
                      Tab(
                        text: "Living Room",
                      ),
                      Tab(
                        text: "Bedroom",
                      ),
                      Tab(
                        text: "Dining Room",
                      ),
                      Tab(
                        text: "Kitchen",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 650,
                    width: MediaQuery.of(context).size.width,
                    child: TabBarView(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Recommended Furnitures",
                              style: GoogleFonts.montserrat(
                                color: Colors.brown[800],
                                fontSize: 16,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 20,
                                crossAxisSpacing: 20,
                              ),
                              itemCount: nama.length,
                              shrinkWrap: true,
                              physics: const ScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x19000000),
                                        blurRadius: 6,
                                        offset: Offset(0, 4),
                                      ),
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        16.0,
                                      ),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                6.7,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image:
                                                    NetworkImage(images[index]),
                                                fit: BoxFit.cover,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(
                                                  16.0,
                                                ),
                                                topRight: Radius.circular(
                                                  16.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 10,
                                            top: 10,
                                            child: Container(
                                              height: 40.0,
                                              width: 40,
                                              decoration: const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                    12.0,
                                                  ),
                                                ),
                                              ),
                                              child: const Center(
                                                child: Icon(
                                                  CupertinoIcons.heart_fill,
                                                  color: Colors.red,
                                                  size: 24.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Spacer(),
                                      Padding(
                                        padding: const EdgeInsets.all(12),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              nama[index],
                                              style: GoogleFonts.montserrat(
                                                color: Colors.brown[800],
                                                letterSpacing: 1,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 5.0,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "\$ ${harga[index]}",
                                                  style: GoogleFonts.montserrat(
                                                    color: Colors.grey[500],
                                                    letterSpacing: 1,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                const Spacer(),
                                                const Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 18,
                                                ),
                                                const SizedBox(
                                                  width: 5.0,
                                                ),
                                                Text(
                                                  bintang[index],
                                                  style: GoogleFonts.montserrat(
                                                    color: Colors.grey[500],
                                                    letterSpacing: 1,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                        Center(
                          child: Text(
                            "Living Room",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.montserrat(
                              color: Colors.brown[800],
                              fontSize: 20,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            "Bed Room",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.montserrat(
                              color: Colors.brown[800],
                              fontSize: 20,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            "Dining Room",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.montserrat(
                              color: Colors.brown[800],
                              fontSize: 20,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            "Kitchen",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.montserrat(
                              color: Colors.brown[800],
                              fontSize: 20,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
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
    );
  }
}
