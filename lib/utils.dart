import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

//Declaration
final font = GoogleFonts.montserrat(
  letterSpacing: 1,
  fontWeight: FontWeight.w400,
);

final aspectRatios = [
  [1, 1],
  [3, 2],
  [16, 9],
];

class Video {
  Video({
    required this.name,
    required this.url,
    required this.thumbnail,
    required this.description,
  });

  final String description;
  final String name;
  final String thumbnail;
  final String url;
}

var videos = [
  Video(
    description:
        "HBO GO now works with Chromecast -- the easiest way to enjoy online video on your TV. For when you want to settle into your Iron Throne to watch the latest episodes.",
    name: "For Bigger Blazes",
    thumbnail: "https://picsum.photos/1020",
    url:
        'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4',
  ),
  Video(
    description:
        "Introducing Chromecast. The easiest way to enjoy online video and music on your TV—for when Batman's escapes aren't quite big enough.",
    name: "For Bigger Escape",
    thumbnail: "https://picsum.photos/1010",
    url:
        'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4',
  ),
  Video(
    description:
        "Introducing Chromecast. The easiest way to enjoy online video and music on your TV.",
    name: "For Bigger Fun",
    thumbnail: "https://picsum.photos/1300",
    url:
        'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4',
  )
];

//GetxController
class MyController extends GetxController {
  //Declaration
  var count = 0.obs;

  var isActive = true.obs;

  //Function
  void changeTheme() => isActive.value = !isActive.value;

  void increment() => count.value += 1;

  void decrement() {
    if (count < 1) {
      return;
    }
    count.value--;
  }
}
