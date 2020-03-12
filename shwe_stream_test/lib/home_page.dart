import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shwe_stream_test/home_menu_drawer.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => new _HomePageState();
}

final List<String> imgList = [
  'assets/image_slider_one.jpg',
  'assets/image_slider_two.jpg',
  'assets/image_slider_three.jpg',
  'assets/image_slider_four.jpg',
  'assets/moviecard.jpg',

];

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    final CarouselSlider autoPlayDemo = CarouselSlider(
      height: 260,
      viewportFraction: 0.9,
      aspectRatio: 2.3,
      autoPlay: true,
      enlargeCenterPage: true,
      items: imgList.map(
            (url) {
          return Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: Image.asset(
                url,
                fit: BoxFit.fill,
                  width: 1000.0
              ),
            ),
          );
        },
      ).toList(),
    );


    return new Scaffold(
        appBar: new AppBar(
            title: new Text("SHWEStream"), backgroundColor: Color(0xffb06fa2)),
        drawer: HomeMenuDrawer(),
        body: Container(
            child: ListView(
              children: <Widget>[
                autoPlayDemo,
               /* Promotion(),
                ListViewWithRowTest(),
                MovieCardTest(),*/
              ],
            )));
  }
}