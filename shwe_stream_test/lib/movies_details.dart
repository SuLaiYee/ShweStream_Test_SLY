import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:chewie/src/chewie_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:shwe_stream_test/video_player.dart';
import 'package:video_player/video_player.dart';

class MoviesDetails extends StatefulWidget {
  MoviesDetails({Key key}) : super(key: key);

  @override
  _MoviesDetailsState createState() => _MoviesDetailsState();
}

class _MoviesDetailsState extends State<MoviesDetails> {
  TextStyle loginPageStyle =
  TextStyle(fontFamily: 'Montserrat', fontSize: 15.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child:  Text(
                  "Movies Details",
                ),
                flex: 7,
              ),
              Expanded(
                child: IconButton(
                  icon: Icon(Icons.search, color: Colors.white,),
                  tooltip: 'Search',
                  onPressed: null,
                ),
                flex: 2,
              ),
              Expanded(
                child: IconButton(
                  icon: Icon(Icons.notifications_none, color: Colors.white,),
                  tooltip: 'Notification',
                  onPressed: null,
                ),
              )
            ],
          ),
          backgroundColor: Color(0xffb06fa2)),
      body: Center(
          child: ChewieDemo()
      ),
    );
  }
}