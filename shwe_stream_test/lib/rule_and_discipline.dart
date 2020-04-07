import 'package:flutter/material.dart';
import 'package:shwe_stream_test/base_app_bar.dart';
import 'package:shwe_stream_test/movies_details.dart';

class RulesAndDiscipline extends StatelessWidget {
  RulesAndDiscipline({this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: BaseAppBar(
        title: Text(title),
        appBar: AppBar(),
        widgets: <Widget>[Icon(Icons.more_vert)],
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Text(
            "Rules and Discipline"
        ),
      ),
    );
  }
}
