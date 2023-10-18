import 'package:aatvmobilevsn/custom-widgets/bottonNavigationBar.dart';
import 'package:aatvmobilevsn/pages/userInteractivities/userhome.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class liveVideoFeed extends StatefulWidget {
  const liveVideoFeed({super.key});

  @override
  State<liveVideoFeed> createState() => _liveVideoFeedState();
}

class _liveVideoFeedState extends State<liveVideoFeed> {

  String dataSource = '';

  VideoPlayerController? _controller;

  @override
  void initState(){
    super.initState();
    _controller = VideoPlayerController.asset('assets/video/video1.mp4')..initialize().then((_) {
      setState(() {
        play();
      });
    });
  }

  play(){
        _controller!.value.isPlaying?_controller!.pause():_controller!.play();
  }
  pause(){
        _controller!.value.isPlaying?_controller!.pause():_controller!.play();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading:
          BackButton(
            onPressed: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                     builder: (context) => Navigation(),
                   ));
                   pause();
            },
          )
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 270,
          decoration: BoxDecoration(
            color: Colors.white
          ),
          child:  _controller!.value.isInitialized 
          ?AspectRatio(aspectRatio: _controller!.value.aspectRatio,
          child: VideoPlayer(
           _controller!
          ),
        ): Container(),
        ),
      )
    );
  }
}