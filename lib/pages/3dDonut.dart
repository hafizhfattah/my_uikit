// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'dart:math' as math;
import 'package:google_fonts/google_fonts.dart';

enum ColorStyle {
  style1,
  style2,
  style3,
  style4,
  style5,
}

class Donut extends StatefulWidget {
  const Donut({Key? key}) : super(key: key);

  @override
  State<Donut> createState() => _DonutState();
}

class _DonutState extends State<Donut> with TickerProviderStateMixin {
  double A = 0, B = 0;
  List<dynamic> b = List.generate(1761, (index) => ' ');
  Color background = Colors.black;
  ColorStyle currentStyle = ColorStyle.style1;
  Color front = Colors.green;
  late int k;
  String value = '';
  List<double> z = (List.generate(1761, (index) => 0));

  late AnimationController _controller;
  late Animation<double> _myAnimation;
  late final Ticker _ticker;

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _ticker = createTicker((elapsed) {
      donutFunction();
    });
    _ticker.start();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _myAnimation =
        CurvedAnimation(curve: Curves.decelerate, parent: _controller);
  }

  donutFunction() async {
    double i, j;
    b = List.generate(1760, (index) => ' ');
    z = List.generate(1760, (index) => 0);
    for (j = 0; 6.28 > j; j += 0.07) {
      for (i = 0; 6.28 > i; i += 0.02) {
        double c = math.sin(i),
            d = math.cos(j),
            e = math.sin(A),
            f = math.sin(j),
            g = math.cos(A),
            h = d + 2,
            D = 1 / (c * h * e + f * g + 5),
            l = math.cos(i),
            m = math.cos(B),
            n = math.sin(B),
            t = c * h * g - f * e;
        int x = (40 + 30 * D * (l * h * m - t * n)).toInt(),
            y = (12 + 15 * D * (l * h * n + t * m)).toInt(),
            o = x + 80 * y,
            N = (8 * ((f * e - c * d * g) * m - c * d * e - f * g - l * d * n))
                .toInt();
        if (22 > y && y > 0 && x > 0 && 80 > x && D > z[o]) {
          z[o] = D;
          b[o] = [
            '.',
            ',',
            '-',
            '~',
            ':',
            ';',
            '=',
            '!',
            '*',
            '#',
            '\$',
            '@'
          ][math.max(N, 0)];
        }
      }
    }
    A += 0.04;
    B += 0.02;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    value = "";
    for (var k = 0; k < 1761; k++) {
      value = value + ((k % 80) > 0 ? b[k] : '\n').toString();
    }
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          '3D Spinning Donut',
          style: GoogleFonts.robotoMono().copyWith(
            color: front,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: InteractiveViewer(
            child: RotatedBox(
              quarterTurns: 1,
              child: FittedBox(
                child: Text(
                  value,
                  style: GoogleFonts.robotoMono().copyWith(
                    color: front,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: front,
            onPressed: () {
              switch (currentStyle) {
                case ColorStyle.style1:
                  {
                    currentStyle = ColorStyle.style2;
                    background = Colors.black;
                    front = Colors.blue;
                  }
                  break;
                case ColorStyle.style2:
                  {
                    currentStyle = ColorStyle.style3;
                    background = Colors.black;
                    front = Colors.purple;
                  }
                  break;
                case ColorStyle.style3:
                  {
                    currentStyle = ColorStyle.style4;
                    background = Colors.black;
                    front = Colors.red;
                  }
                  break;
                case ColorStyle.style4:
                  {
                    currentStyle = ColorStyle.style5;
                    background = Colors.black;
                    front = Colors.white;
                  }
                  break;
                case ColorStyle.style5:
                  {
                    currentStyle = ColorStyle.style1;
                    background = Colors.black;
                    front = Colors.green;
                  }
                  break;
                default:
              }
              setState(() {});
            },
            child: Icon(
              Icons.change_circle,
              color: background,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            backgroundColor: front,
            onPressed: () {
              if (_ticker.isActive) {
                _ticker.stop();
                _controller.forward();
              } else {
                _ticker.start();
                _controller.reverse();
              }
            },
            child: AnimatedIcon(
              color: background,
              progress: _myAnimation,
              icon: AnimatedIcons.pause_play,
            ),
          ),
        ],
      ),
    );
  }
}
