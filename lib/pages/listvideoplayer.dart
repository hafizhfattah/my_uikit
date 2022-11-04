// ignore_for_file: public_member_api_docs, sort_constructors_first
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
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
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
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                          Expanded(
                            child: SizedBox(
                              height: 20,
                              child: VideoProgressIndicator(
                                allowScrubbing: true,
                                _controller,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                              ),
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
