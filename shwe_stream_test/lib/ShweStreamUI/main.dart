
import 'package:flutter/material.dart';
import 'package:shwe_stream_test/ShweStreamUI/movie_category_grid.dart';
import 'package:shwe_stream_test/ShweStreamUI/opt_code_page.dart';
import 'package:shwe_stream_test/ShweStreamUI/package_get_service.dart';
import 'dart:io';
import 'package:flutter/foundation.dart';

import 'home_page.dart';

void _enablePlatformOverrideForDesktop() {
  if (!kIsWeb && (Platform.isWindows || Platform.isLinux)) {
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  }
}

void main() {
  //SystemChrome.setEnabledSystemUIOverlays([]);
  _enablePlatformOverrideForDesktop();
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
      home: HomePage(),
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
