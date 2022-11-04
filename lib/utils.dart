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
  [1, 3],
  [3, 2],
  [16, 9],
  [9, 16],
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
        "Big Buck Bunny tells the story of a giant rabbit with a heart bigger than himself. When one sunny day three rodents rudely harass him, something snaps... and the rabbit ain't no bunny anymore! In the typical cartoon tradition he prepares the nasty rodents a comical revenge.",
    name: "Big Buck Bunny",
    thumbnail: "https://picsum.photos/1020",
    url:
        'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
  ),
  Video(
    description:
        "Introducing Chromecast. The easiest way to enjoy online video and music on your TV—for when you want to make Buster's big meltdowns even bigger..",
    name: "For Bigger Meltdowns",
    thumbnail: "https://picsum.photos/1010",
    url:
        'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4',
  ),
  Video(
    description: "The first Blender Open Movie from 2006",
    name: "Elephant Dream",
    thumbnail: "https://picsum.photos/1300",
    url:
        'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4',
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
