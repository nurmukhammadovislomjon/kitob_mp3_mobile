import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kitob_mp3/screens/colors/color.dart';

class ListeningBookPage extends StatefulWidget {
  const ListeningBookPage({
    super.key,
    required this.image,
    required this.title,
  });
  final String title;
  final String image;
  @override
  State<ListeningBookPage> createState() => _ListeningBookPageState();
}

class _ListeningBookPageState extends State<ListeningBookPage> {
  final player = AudioPlayer();

  IconData play = Icons.play_arrow;
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  String formatTime(int seconds) {
    return '${(Duration(seconds: seconds))}'.split('.')[0].padLeft(8, '0');
  }

  @override
  void initState() {
    super.initState();

    player.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });
    player.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    player.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(
          "Kitob.mp3",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: bottomBarColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: size.width * 0.9,
            height: size.width * 0.9,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: listColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  widget.image,
                  height: 280,
                ),
                Text(
                  widget.title,
                  style: GoogleFonts.poppins(color: whiteColor, fontSize: 22),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Slider(
            min: 0,
            max: duration.inSeconds.toDouble(),
            value: position.inSeconds.toDouble(),
            onChanged: (value) {
              final position = Duration(seconds: value.toInt());
              player.seek(position);
              player.resume();
            },
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  formatTime(position.inSeconds),
                  style: GoogleFonts.poppins(color: whiteColor, fontSize: 18),
                ),
                Text(
                  formatTime((duration - position).inSeconds),
                  style: GoogleFonts.poppins(color: whiteColor, fontSize: 18),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: listColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.skip_previous,
                    color: Colors.white.withOpacity(0.6),
                    size: 40,
                  ),
                ),
              ),
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: listColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  onPressed: () {
                    if (player.state == PlayerState.playing) {
                      play = Icons.play_arrow;
                      player.pause();
                    } else {
                      play = Icons.pause;
                      player.play(AssetSource("gulim.mp3"));
                    }
                    setState(() {});
                  },
                  icon: Icon(
                    play,
                    color: whiteColor,
                    size: 40,
                  ),
                ),
              ),
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: listColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.skip_next,
                    color: Colors.white.withOpacity(0.6),
                    size: 40,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
