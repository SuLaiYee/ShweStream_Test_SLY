import 'package:flutter/material.dart';
import 'package:shwe_stream_test/ShweStreamUI/base_app_bar.dart';

class QuestionsAndAnswers extends StatelessWidget {
  QuestionsAndAnswers({this.title});

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
          "Question and Answers"
        ),
        ),
      );
  }
}
