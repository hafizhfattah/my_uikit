// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:draggable_fab/draggable_fab.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:floating/floating.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../utils.dart';

class ListVideoPlayer extends StatefulWidget {
  const ListVideoPlayer({super.key});

  @override
  State<ListVideoPlayer> createState() => _ListVideoPlayerState();
}

class _ListVideoPlayerState extends State<ListVideoPlayer> {
  late VideoPlayerController _controller;
  int _currentIndex = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _playVideo(init: true);
    super.initState();
  }

  void _playVideo({int index = 0, bool init = false}) {
    if (index < 0 || index >= videos.length) return;

    if (!init) {
      _controller.pause;
    }

    setState(() => _currentIndex = index);

    _controller = VideoPlayerController.network(videos[_currentIndex].url)
      ..initialize().then((_) {
        setState(() {});
      });
  }

  String _videoDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    return [
      if (duration.inHours > 0) hours,
      minutes,
      seconds,
    ].join(':');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("", style: font),
        centerTitle: false,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            _controller.value.isInitialized
                ? Column(
                    children: [
                      AspectRatio(
                        aspectRatio: 25 / 10,
                        child: VideoPlayer(_controller),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ValueListenableBuilder(
                            valueListenable: _controller,
                            builder: (context, VideoPlayerValue value, child) {
                              return Text(
                                _videoDuration(value.position),
                                style: font,
                              );
                            },
                          ),
                          SizedBox(
                            height: 20,
                            width: MediaQuery.of(context).size.width / 2,
                            child: VideoProgressIndicator(
                              allowScrubbing: true,
                              _controller,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                            ),
                          ),
                          Text(
                            _videoDuration(_controller.value.duration),
                            style: font,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _controller.value.isPlaying
                                ? _controller.pause()
                                : _controller.play();
                          });
                        },
                        icon: Icon(
                          _controller.value.isPlaying
                              ? Icons.pause
                              : Icons.play_arrow,
                          size: 30,
                        ),
                      ),
                    ],
                  )
                : const Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
            const SizedBox(
              height: 10.0,
            ),
            ListView.builder(
              itemCount: videos.length,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () => _playVideo(index: index),
                  child: Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: NetworkImage(
                          videos[index].thumbnail,
                        ),
                      ),
                      title: Text(videos[index].name, style: font),
                      subtitle: Text(videos[index].description, style: font),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class Newplayer extends StatefulWidget {
  const Newplayer({super.key});

  @override
  State<Newplayer> createState() => _NewplayerState();
}

class _NewplayerState extends State<Newplayer> {
  List<int> aspectRatio = aspectRatios.first;
  late Floating floating;
  bool isPipAvailable = true;

  late VideoPlayerController _controller;
  int _currentIndex = 0;

  @override
  void dispose() {
    floating.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    floating = Floating();
    _playVideo(init: true);

    super.initState();
  }

  void requestPipAvailable() async {
    isPipAvailable = await floating.isPipAvailable;
    setState(() {});
  }

  void _playVideo({int index = 0, bool init = false}) {
    if (index < 0 || index >= videos.length) return;

    if (!init) {
      _controller.pause;
    }

    setState(() => _currentIndex = index);

    _controller = VideoPlayerController.network(videos[_currentIndex].url)
      ..initialize().then((_) {
        setState(() {});
      });
  }

  String _videoDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    return [
      if (duration.inHours > 0) hours,
      minutes,
      seconds,
    ].join(':');
  }

  @override
  Widget build(BuildContext context) {
    return PiPSwitcher(
        childWhenEnabled: Scaffold(
          body: Center(child: VideoPlayer(_controller)),
        ),
        childWhenDisabled: Scaffold(
          appBar: AppBar(
            title: Text("", style: font),
            centerTitle: false,
          ),
          floatingActionButton: SafeArea(
            child: DraggableFab(
              child: FloatingActionButton(
                onPressed: isPipAvailable
                    ? () => floating
                        .enable(Rational(aspectRatio[0], aspectRatio[1]))
                    : null,
                child: const Icon(
                  Icons.picture_in_picture,
                  size: 24.0,
                ),
              ),
            ),
          ),
          body: SafeArea(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _controller.value.isInitialized
                    ? Column(
                        children: [
                          AspectRatio(
                            aspectRatio: 25 / 10,
                            child: VideoPlayer(_controller),
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ValueListenableBuilder(
                                valueListenable: _controller,
                                builder:
                                    (context, VideoPlayerValue value, child) {
                                  return Text(
                                    _videoDuration(value.position),
                                    style: font,
                                  );
                                },
                              ),
                              SizedBox(
                                height: 20,
                                width: MediaQuery.of(context).size.width / 2,
                                child: VideoProgressIndicator(
                                  allowScrubbing: true,
                                  _controller,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12),
                                ),
                              ),
                              Text(
                                _videoDuration(_controller.value.duration),
                                style: font,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                _controller.value.isPlaying
                                    ? _controller.pause()
                                    : _controller.play();
                              });
                            },
                            icon: Icon(
                              _controller.value.isPlaying
                                  ? Icons.pause
                                  : Icons.play_arrow,
                              size: 30,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          DropdownButtonFormField2(
                            buttonHeight: 30,
                            buttonPadding:
                                const EdgeInsets.only(left: 20, right: 10),
                            buttonDecoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                            isDense: true,
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: const EdgeInsets.only(
                                  bottom: 10, top: 20, left: 10, right: 10),
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
                                    (List<int> value) =>
                                        DropdownMenuItem<List<int>>(
                                          value: value,
                                          child: Text(
                                              "${value.first} : ${value.last}",
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
                      )
                    : const Center(
                        child: CircularProgressIndicator.adaptive(),
                      ),
                const SizedBox(
                  height: 10.0,
                ),
                ListView.builder(
                  itemCount: videos.length,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () => _playVideo(index: index),
                      child: Card(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.white,
                            backgroundImage: NetworkImage(
                              videos[index].thumbnail,
                            ),
                          ),
                          title: Text(videos[index].name, style: font),
                          subtitle:
                              Text(videos[index].description, style: font),
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ));
  }
}
