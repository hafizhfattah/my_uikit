import 'package:floating/floating.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../utils.dart';

class PipExample extends StatefulWidget {
  const PipExample({super.key});

  @override
  State<PipExample> createState() => _PipExampleState();
}

class _PipExampleState extends State<PipExample> {
  List<int> aspectRatio = aspectRatios.first;
  late Floating floating;
  bool isPipAvailable = true;

  @override
  void dispose() {
    floating.dispose();
    super.dispose();
  }

  @override
  void initState() {
    floating = Floating();
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
        appBar: AppBar(
          title: Text("PipView", style: font),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: double.infinity),
            Text("Pip is Actived", style: font)
          ],
        ),
      ),
      childWhenDisabled: Scaffold(
        appBar: AppBar(
          title: Text("PIP Example", style: font),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: double.infinity),
            // Text("Pip is ${isPipAvailable ? '' : 'not '}availabele",
            //     style: font),
            Text(
              "Pip is Available",
              style: font,
            ),
            DropdownButton(
              value: aspectRatio,
              items: aspectRatios
                  .map<DropdownMenuItem<List<int>>>((List<int> value) =>
                      DropdownMenuItem<List<int>>(
                        value: value,
                        child:
                            Text("${value.first} : ${value.last}", style: font),
                      ))
                  .toList(),
              onChanged: (List<int>? newValue) {
                if (newValue == null) return;
                aspectRatio = newValue;
                setState(() {});
              },
            ),
            IconButton(
              onPressed: isPipAvailable
                  ? () =>
                      floating.enable(Rational(aspectRatio[0], aspectRatio[1]))
                  : null,
              icon: const Icon(
                Icons.picture_in_picture,
                size: 24.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PipVideoPlayer extends StatefulWidget {
  const PipVideoPlayer({super.key});

  @override
  State<PipVideoPlayer> createState() => _PipVideoPlayerState();
}

class _PipVideoPlayerState extends State<PipVideoPlayer> {
  List<int> aspectRatio = aspectRatios.first;
  late Floating floating;
  bool isPipAvailable = true;

  late VideoPlayerController _controller;

  @override
  void dispose() {
    floating.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    floating = Floating();
    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        _controller.setLooping(true);
        _controller.pause();
        setState(() {});
      });
    super.initState();
  }

  Widget justVideo() {
    return AspectRatio(aspectRatio: 16 / 9, child: VideoPlayer(_controller));
  }

  void requestPipAvailable() async {
    isPipAvailable = await floating.isPipAvailable;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return PiPSwitcher(
      childWhenEnabled: justVideo(),
      childWhenDisabled: Scaffold(
        appBar: AppBar(
          title: Text(
            "PIP Video Player",
            style: font,
          ),
        ),
        body: Center(
          child: justVideo(),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.picture_in_picture,
            size: 24.0,
          ),
          onPressed: () async {
            await floating.enable(const Rational.landscape());
          },
        ),
      ),
    );
  }
}
