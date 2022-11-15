import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

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

//Declaration
final font = GoogleFonts.montserrat(
  letterSpacing: 1,
  fontWeight: FontWeight.w400,
);

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

final aspectRatios = [
  [1, 1],
  [3, 2],
  [16, 9],
];

final bintang = [
  "4.8",
  "4.9",
  "4.7",
  "4.5",
  "3.5",
  "5.5",
];

final harga = [
  "170",
  "75",
  "240",
  "210",
  "55",
  "21",
];

final nama = [
  "Stylish Chair",
  "Modern Table",
  "Wooden Console",
  "Brown Armchair",
  "Black Armchair",
  "Mable Armchair"
];

final images = [
  'https://images.unsplash.com/photo-1448697138198-9aa6d0d84bf4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8dGFibGV8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60',
  'https://images.unsplash.com/photo-1581428982868-e410dd047a90?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dGFibGV8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60',
  'https://images.unsplash.com/photo-1530018607912-eff2daa1bac4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8dGFibGV8ZW58MHx8MHx8&auto=format&fit=crop&w=400&q=60',
  'https://images.unsplash.com/photo-1529113241001-b495badd8d44?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHRhYmxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60',
  "https://images.unsplash.com/photo-1533090481720-856c6e3c1fdc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHRhYmxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
  "https://images.unsplash.com/photo-1594125674956-61a9b49c8ecc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHRhYmxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
];

final videos = [
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
