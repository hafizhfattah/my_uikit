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
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4"),
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
                  "Film 2022",
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
                  'Lahir di pinggir Danau Maninjau dan tidak pernah menginjak tanah di luar ranah Minangkabau. Masa kecilnya adalah berburu durian runtuh di rimba Bukit Barisan, bermain bola di sawah berlumpur dan tentu mandi berkecipak di air biru Danau Maninjau. Tiba-tiba saja dia harus naik bus tiga hari tiga malam melintasi punggung Sumatera dan Jawa menuju sebuah desa di pelosok Jawa Timur. Ibunya ingin dia menjadi Buya Hamka walau Alif ingin menjadi Habibie. Dengan setengah hati dia mengikuti perintah Ibunya: belajar di pondok. Di kelas hari pertamanya di Pondok Madani (PM), Alif terkesima dengan "mantera" sakti man jadda wajada. Siapa yang bersungguh-sungguh pasti sukses. Dia terheran-heran mendengar komentator sepakbola berbahasa Arab, anak menggigau dalam bahasa Inggris, merinding mendengar ribuan orang melagukan Syair Abu Nawas dan terkesan melihat pondoknya setiap pagi seperti melayang di udara. Dipersatukan oleh hukuman jewer berantai, Alif berteman dekat dengan Raja dari Medan, Said dari Surabaya, Dulmajid dari Sumenep, Atang dari Bandung dan Baso dari Gowa. Di bawah menara masjid yang menjulang, mereka berenam kerap menunggu maghrib sambil menatap awan lembayung yang berarak pulang ke ufuk. Di mata belia mereka, awan-awan itu menjelma menjadi negara dan benua impian masing-masing. Kemana impian jiwa muda ini membawa mereka?',
                  trimLines: 5,
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
