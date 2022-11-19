import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    final font = GoogleFonts.montserrat(
      color: Colors.blueGrey,
      letterSpacing: 1,
      fontWeight: FontWeight.w500,
    );

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: 300,
                child: TabBar(
                  tabs: [
                    Tab(
                      child: Text("Home", style: font),
                    ),
                    Tab(
                      child: Text("Work", style: font),
                    ),
                    Tab(
                      child: Text("Play", style: font),
                    ),
                  ],

                  // indicator: DotIndicator(
                  //   color: Colors.black,
                  //   distanceFromCenter: 16,
                  //   radius: 3,
                  //   paintingStyle: PaintingStyle.fill,
                  // ),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                height: 300,
                width: double.maxFinite,
                child: TabBarView(
                  children: [
                    Center(
                      child: Text(
                        "Home",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.montserrat(
                          letterSpacing: 1,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Work",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.montserrat(
                          letterSpacing: 1,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Play",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.montserrat(
                          letterSpacing: 1,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Row(
                children: [
                  RotatedBox(
                    quarterTurns: 3,
                    child: SizedBox(
                      width: 300,
                      child: TabBar(
                        tabs: [
                          Tab(
                            child: Text("Home", style: font),
                          ),
                          Tab(
                            child: Text("Work", style: font),
                          ),
                          Tab(
                            child: Text("Play", style: font),
                          ),
                        ],

                        // indicator: DotIndicator(
                        //   color: Colors.black,
                        //   distanceFromCenter: 16,
                        //   radius: 3,
                        //   paintingStyle: PaintingStyle.fill,
                        // ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      padding: const EdgeInsets.only(left: 20),
                      height: 300,
                      width: double.maxFinite,
                      child: TabBarView(
                        children: [
                          Center(
                            child: Text(
                              "Home",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.montserrat(
                                letterSpacing: 1,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Work",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.montserrat(
                                letterSpacing: 1,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Play",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.montserrat(
                                letterSpacing: 1,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12.0,
              ),
              Row(
                children: [
                  Flexible(
                    child: Container(
                      padding: const EdgeInsets.only(left: 20),
                      height: 300,
                      width: double.maxFinite,
                      child: TabBarView(
                        children: [
                          Center(
                            child: Text(
                              "Home",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.montserrat(
                                letterSpacing: 1,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Work",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.montserrat(
                                letterSpacing: 1,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Play",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.montserrat(
                                letterSpacing: 1,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  RotatedBox(
                    quarterTurns: 5,
                    child: SizedBox(
                      width: 300,
                      child: TabBar(
                        tabs: [
                          Tab(
                            child: Text("Home", style: font),
                          ),
                          Tab(
                            child: Text("Work", style: font),
                          ),
                          Tab(
                            child: Text("Play", style: font),
                          ),
                        ],

                        // indicator: DotIndicator(
                        //   color: Colors.black,
                        //   distanceFromCenter: 16,
                        //   radius: 3,
                        //   paintingStyle: PaintingStyle.fill,
                        // ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12.0,
              ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                height: 300,
                width: double.maxFinite,
                child: TabBarView(
                  children: [
                    Center(
                      child: Text(
                        "Home",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.montserrat(
                          letterSpacing: 1,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Work",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.montserrat(
                          letterSpacing: 1,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Play",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.montserrat(
                          letterSpacing: 1,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 300,
                child: RotatedBox(
                  quarterTurns: 2,
                  child: TabBar(
                    tabs: [
                      Tab(
                        child: Text("Home", style: font),
                      ),
                      Tab(
                        child: Text("Work", style: font),
                      ),
                      Tab(
                        child: Text("Play", style: font),
                      ),
                    ],

                    // indicator: DotIndicator(
                    //   color: Colors.black,
                    //   distanceFromCenter: 16,
                    //   radius: 3,
                    //   paintingStyle: PaintingStyle.fill,
                    // ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
