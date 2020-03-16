import 'package:flutter/material.dart';
import 'package:shwe_stream_test/login_page.dart';
import 'package:shwe_stream_test/opt_code_page.dart';
import 'package:shwe_stream_test/package_get_service.dart';
import 'package:shwe_stream_test/video_player.dart';


void main() {
  //SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MaterialColor colorCustom = MaterialColor(0xffc030b9, color);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Shwe Stream Login",
      theme: ThemeData(primarySwatch: colorCustom),
      home: LoginPage(),
    );
  }
}

Map<int, Color> color = {
  50: Color.fromRGBO(136, 14, 79, .1),
  100: Color.fromRGBO(136, 14, 79, .2),
  200: Color.fromRGBO(136, 14, 79, .3),
  300: Color.fromRGBO(136, 14, 79, .4),
  400: Color.fromRGBO(136, 14, 79, .5),
  500: Color.fromRGBO(136, 14, 79, .6),
  600: Color.fromRGBO(136, 14, 79, .7),
  700: Color.fromRGBO(136, 14, 79, .8),
  800: Color.fromRGBO(136, 14, 79, .9),
  900: Color.fromRGBO(136, 14, 79, 1),
};
