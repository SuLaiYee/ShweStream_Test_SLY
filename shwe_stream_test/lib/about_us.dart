import 'package:flutter/material.dart';
import 'package:shwe_stream_test/base_app_bar.dart';

class AboutUs extends StatelessWidget {
  AboutUs({this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: BaseAppBar(
        title: Text(title, style: TextStyle(fontSize: 17),),
        appBar: AppBar(),
        widgets: <Widget>[Icon(Icons.more_vert)],
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Text(
            "AboutUs"
        ),
      ),
    );
  }
}
