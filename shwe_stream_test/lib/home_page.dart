import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shwe_stream_test/base_app_bar.dart';
import 'package:shwe_stream_test/home_menu_drawer.dart';
import 'package:shwe_stream_test/movie_category_list.dart';
import 'adv_promotion.dart';

class HomePage extends StatefulWidget {
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

class CustomPopupMenu {
  CustomPopupMenu({this.title, this.icon});

  String title;
  IconData icon;
}

List<CustomPopupMenu> choices = <CustomPopupMenu>[
  CustomPopupMenu(title: 'Home', icon: Icons.home),
  CustomPopupMenu(title: 'Profile', icon: Icons.bookmark),
];

class _HomePageState extends State<HomePage> {
  CustomPopupMenu _selectedChoices = choices[0];

  void _select(CustomPopupMenu choice) {
    setState(() {
      _selectedChoices = choice;
    });
  }

  @override
  Widget build(BuildContext context) {
    final CarouselSlider autoPlayDemo = CarouselSlider(
      height: 240,
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
              child: Image.asset(url, fit: BoxFit.fill, width: 1000.0),
            ),
          );
        },
      ).toList(),
    );

    return new Scaffold(
        appBar: BaseAppBar(
          title: Image.asset(
            'assets/landing_tittle.png',
            fit: BoxFit.contain,
            height: 33,
            alignment: Alignment.centerLeft,
          ),
          appBar: AppBar(),
          widgets: <Widget>[Icon(Icons.more_vert)],
        ),
        drawer: HomeMenuDrawer(),
        body: Container(
            child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          children: <Widget>[
            Container(color: Color(0xFFD6D6D6), child: autoPlayDemo),
            ADPromotion(),
            MovieCategoryList(title: "မြန်မာရုပ်ရှင်ဇာတ်ကားကောင်းများ"),
            MovieCategoryList(title: "ကိုရီးယားဒရာမာဇာတ်လမ်းတွဲများ"),
            MovieCategoryList(title: "သဘာဝလွန်ဖြစ်ရပ်ဆန်းများ"),
            MovieCategoryList(title: "တဝါးဝါး တဟားဟား"),
            MovieCategoryList(title: "အက်ရှင် ဖိုက်တင်"),
            MovieCategoryList(title: "အငြိမ့်နှင့်နှစ်ပါးသွား"),
          ],
        )));
  }
}