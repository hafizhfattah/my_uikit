import 'package:draggable_fab/draggable_fab.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:floating/floating.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import 'package:video_player/video_player.dart';

import '../utils.dart';

class PipVideoPlayer extends StatefulWidget {
  const PipVideoPlayer({super.key});

  @override
  State<PipVideoPlayer> createState() => _PipVideoPlayerState();
}

class _PipVideoPlayerState extends State<PipVideoPlayer> {
  List<int> aspectRatio = aspectRatios.first;
  late FlickManager flickManager;
  late Floating floating;
  bool isPipAvailable = true;

  @override
  void dispose() {
    floating.dispose();
    flickManager.dispose();
    super.dispose();
  }

  @override
  void initState() {
    floating = Floating();
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.network(
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4"),
    );
    super.initState();
  }

  void requestPipAvailable() async {
    isPipAvailable = await floating.isPipAvailable;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return PiPSwitcher(
      childWhenEnabled: Scaffold(
        body: Center(child: FlickVideoPlayer(flickManager: flickManager)),
      ),
      childWhenDisabled: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text("", style: font),
        ),
        floatingActionButton: SafeArea(
          child: DraggableFab(
            child: FloatingActionButton(
              onPressed: isPipAvailable
                  ? () =>
                      floating.enable(Rational(aspectRatio[0], aspectRatio[1]))
                  : null,
              child: const Icon(
                Icons.picture_in_picture,
                size: 24.0,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                  child: AspectRatio(
                      aspectRatio: 25 / 10,
                      child: FlickVideoPlayer(flickManager: flickManager)),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "For Bigger Joyrides",
                  style: GoogleFonts.montserrat(
                    letterSpacing: 1,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ReadMoreText(
                  'Introducing Chromecast. The easiest way to enjoy online video and music on your TV—for the times that call for bigger joyrides.',
                  trimLines: 2,
                  style: font,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Read More',
                  trimExpandedText: ' Show less',
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Text(
                  "Choose Ratio",
                  style: font,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                DropdownButtonFormField2(
                  buttonHeight: 30,
                  buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                  buttonDecoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  ),
                  isDense: true,
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: const EdgeInsets.only(
                        bottom: 10, top: 10, left: 10, right: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  isExpanded: true,
                  value: aspectRatio,
                  items: aspectRatios
                      .map<DropdownMenuItem<List<int>>>(
                          (List<int> value) => DropdownMenuItem<List<int>>(
                                value: value,
                                child: Text("${value.first} : ${value.last}",
                                    style: font),
                              ))
                      .toList(),
                  validator: (value) {
                    if (value == null) {
                      return 'Please select Ratio';
                    }
                    return null;
                  },
                  onChanged: (List<int>? newValue) {
                    if (newValue == null) return;
                    aspectRatio = newValue;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
