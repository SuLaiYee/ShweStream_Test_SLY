import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:chewie/src/chewie_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:video_player/video_player.dart';


final videoPlayerController = VideoPlayerController.network(
    'https://flutter.github.io/assets-for-api-docs/videos/butterfly.mp4');

final chewieController = ChewieController(
  videoPlayerController: videoPlayerController,
  aspectRatio: 3 / 2,
  autoPlay: true,
  looping: true,
);

final playerWidget = Chewie(
  controller: chewieController,
);

class ChewieDemo extends StatefulWidget {
  ChewieDemo({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _ChewieDemoState();
  }
}

class _ChewieDemoState extends State<ChewieDemo> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;
  VideoPlayerController _videoPlayerController2;
  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController1 = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');
    _videoPlayerController2 = VideoPlayerController.network(
        'https://www.sample-videos.com/video123/mp4/480/asdasdas.mp4');
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      //aspectRatio: 3 / 2,
      autoPlay: false,
      looping: false,
      allowFullScreen: true,
      allowMuting: false,
      //showControlsOnInitialize: false,
      //isLive: false,
      showControlsOnInitialize: false,

      //Try playing around with some of these other options:

       //showControls: false,
        materialProgressColors: ChewieProgressColors(
        playedColor: Color(0xffe64a8b),

        handleColor: Colors.purple,
          backgroundColor: Colors.grey,
        bufferedColor: Color(0xffbf34b5),
       ),
       placeholder: Container(
         color: Colors.grey,
       ),
       autoInitialize: true,

    );
  }

  @override
  void dispose() {
    _videoPlayerController1.dispose();
    _videoPlayerController2.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
            children: <Widget>[
              Expanded(
                child: Center(
                  child: Chewie(
                    controller: _chewieController,
                  ),
                ),
              ),
             /* FlatButton(
                onPressed: () {
                  _chewieController.enterFullScreen();
                },
                child: Text('Fullscreen'),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        setState(() {
                          _chewieController.dispose();
                          _videoPlayerController2.pause();
                          _videoPlayerController2.seekTo(Duration(seconds: 0));
                          _chewieController = ChewieController(
                            videoPlayerController: _videoPlayerController1,
                            aspectRatio: 3 / 2,
                            autoPlay: true,
                            looping: true,
                          );
                        });
                      },
                      child: Padding(
                        child: Text("Video 1"),
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        setState(() {
                          _chewieController.dispose();
                          _videoPlayerController1.pause();
                          _videoPlayerController1.seekTo(Duration(seconds: 0));
                          _chewieController = ChewieController(
                            videoPlayerController: _videoPlayerController2,
                            aspectRatio: 3 / 2,
                            autoPlay: true,
                            looping: true,
                          );
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        child: Text("Error Video"),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        setState(() {
                          _platform = TargetPlatform.android;
                        });
                      },
                      child: Padding(
                        child: Text("Android controls"),
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        setState(() {
                          _platform = TargetPlatform.iOS;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        child: Text("iOS controls"),
                      ),
                    ),
                  )
                ],
              )*/
            ],
          ),
    );
  }
}
