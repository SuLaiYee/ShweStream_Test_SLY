import 'package:flutter/material.dart';
import 'package:shwe_stream_test/base_app_bar.dart';

class UserProfile extends StatelessWidget {
  final Widget phoneField = Container(
      margin: EdgeInsets.fromLTRB(32, 16, 32, 16),
      child: TextField(
        keyboardType: TextInputType.number,
        obscureText: false,
        enabled: false,
        textAlign: TextAlign.start,
        cursorColor: Color(0xffe64a8b),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 8, 8, 8),
          hintText: "MPT နံပါတ်ထည့်ရန်",
          prefixText: "09 -  ",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
        ),
      ));

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: BaseAppBar(
        title: Text("Profile"),
        appBar: AppBar(),
        widgets: <Widget>[Icon(Icons.more_vert)],
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: phoneField,
      ),
    );
  }
}
