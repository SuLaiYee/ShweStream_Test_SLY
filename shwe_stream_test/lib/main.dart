import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shwe_stream_test/home_page.dart';
import 'package:shwe_stream_test/login_page.dart';
import 'package:shwe_stream_test/movie_category_grid.dart';
import 'package:shwe_stream_test/movie_category_list.dart';
import 'package:shwe_stream_test/opt_code_page.dart';
import 'package:shwe_stream_test/package_get_service.dart';
import 'package:shwe_stream_test/chewie_demo_player.dart';

void main() {
  //SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MaterialColor colorCustom = MaterialColor(0xffe64a8b, color);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Shwe Stream Login",
      theme: ThemeData(primarySwatch: colorCustom),
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {

       //   '/loginscreen': (BuildContext context) => new LoginPage(),

        // When navigating to the "/" route, build the FirstScreen widget.
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/homepage': (context) => HomePage(),
        '/optpage': (context) => OPTCodePage(),
        '/package': (context) => PackageGetService(),
        '/moviecategory': (BuildContext context) => new MovieCategoryGrid(title: "Movie Category"),
      },
      home: LoginPage(),
    );
  }
}

/*class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/loginscreen');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[Color(0xff9c1dda), Color(0xffee498f)]),
        ),
       child: new Center(
          child: new Image.asset('assets/landing_tittle.png'),
        ),
      ),
    );
  }
}*/

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
