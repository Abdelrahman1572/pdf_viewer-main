import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class OnlineMaterials extends StatefulWidget {
  const OnlineMaterials({super.key});

  @override
  State<OnlineMaterials> createState() => _OnlineMaterialsState();
}

class _OnlineMaterialsState extends State<OnlineMaterials> {

  final videoUrl = "https://youtu.be/-hu87KQJA-Q?si=xCq5gNN78zNATj6B";
  late YoutubePlayerController _controller;

  @override
  void initState(){
    final videoID = YoutubePlayer.convertUrlToId(videoUrl);
    _controller = YoutubePlayerController(
        initialVideoId: videoID!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.lightBlue,
          ),
        ),
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Websites',style: TextStyle(fontSize: 25,color: Color.fromARGB(255, 94, 167, 227))),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () async {
                      final url = Uri.parse('https://dart.dev/');
                      if (await canLaunchUrl(url)) {
                         launchUrl(url, mode: LaunchMode.externalNonBrowserApplication);
                      }
                    },
                    child: Container(
                      width: 170,
                      height: 110,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(image: AssetImage('assets/images/dart.png'))
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      final url = Uri.parse('https://flutter.dev/');
                      if (await canLaunchUrl(url)) {
                        launchUrl(url, mode: LaunchMode.externalNonBrowserApplication);
                      }
                    },
                    child: Container(
                      width: 170,
                      height: 110,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(image: AssetImage('assets/images/logo2.png'))
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              const Text('Videos',style: TextStyle(fontSize: 25,color: Color.fromARGB(255, 94, 167, 227))),
              const SizedBox(height: 10,),
              Container(
                padding: const EdgeInsets.all(8),
                child: YoutubePlayer(
                  controller: _controller,
                  showVideoProgressIndicator: true,
                  onReady: ()=> debugPrint('Ready'),
                  bottomActions: [
                    CurrentPosition(),
                    ProgressBar(
                      isExpanded: true,
                      colors: const ProgressBarColors(
                        playedColor: Colors.cyan,
                        handleColor: Colors.cyanAccent,
                      ),
                    ),
                    const PlaybackSpeedButton(),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: YoutubePlayer(
                  controller: YoutubePlayerController(
                    initialVideoId: 'FByOExKRh9o',
                    flags: const YoutubePlayerFlags(
                      autoPlay: false,
                      mute: false,
                    ),
                  ),
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.blueAccent,
                  progressColors: const ProgressBarColors(
                    playedColor: Colors.blue,
                    handleColor: Colors.blueAccent,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

