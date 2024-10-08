import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';
import 'dart:async';
class VideoScreenScreen extends StatefulWidget {
  const VideoScreenScreen({super.key});

  @override
  State<VideoScreenScreen> createState() => _VideoScreenScreenState();
}

class _VideoScreenScreenState extends State<VideoScreenScreen> {

 late VideoPlayerController _controller;
 late Future<void> _initializeVideoPlayer;
@override
  void initState() {
  // TODO: implement initState
  super.initState();
  _controller = VideoPlayerController.networkUrl(Uri.parse(
      "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4"));
  _initializeVideoPlayer = _controller.initialize();
  _controller.setLooping(true);
}
@override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text("Butterfly Video"),
      ),
      body: FutureBuilder(future: _initializeVideoPlayer, builder: (context, snapshot) {
        if (snapshot.connectionState==ConnectionState.done){
          return AspectRatio(aspectRatio: _controller.value.aspectRatio,child: VideoPlayer(_controller),);
          
        }
        else{
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          if (_controller.value.isPlaying){
            _controller.pause();
          }
          else{
            _controller.play();
          }
        });
      },
      child: Icon(_controller.value.isPlaying?Icons.pause: Icons.play_arrow,),
      ),
    );
  }
}
