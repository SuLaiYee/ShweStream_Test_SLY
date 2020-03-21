import 'package:flutter/material.dart';
import 'package:shwe_stream_test/base_app_bar.dart';
import 'package:shwe_stream_test/movies_details.dart';

class MovieCategoryGrid extends StatelessWidget {
  MovieCategoryGrid({this.title});

  final String title;

  final List<String> images = [
    "assets/movieposter1.jpg",
    "assets/movieposter2.jpg",
    "assets/movieposter3.jpg",
    "assets/movieposter4.jpg",
    "assets/movieposter5.jpg",
    "assets/movieposter6.jpg",
    "assets/movieposter7.jpg",
    "assets/movieposter4.jpg",
    "assets/movieposter2.jpg",
    "assets/movieposter3.jpg",
    "assets/movieposter6.jpg",
    "assets/movieposter5.jpg",
    "assets/movieposter1.jpg",
    "assets/movieposter7.jpg",
    "assets/movieposter4.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    double cardWidth = MediaQuery.of(context).size.width / 3.3;
    double cardHeight = MediaQuery.of(context).size.height / 4.5;
    return Scaffold(
      appBar: BaseAppBar(
        title: Text(title),
        appBar: AppBar(),
        widgets: <Widget>[Icon(Icons.more_vert)],
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: cardWidth / cardHeight,
              crossAxisCount: 3,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4.0),
          itemBuilder: (BuildContext context, int index) => Material(
            child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MoviesDetails()));
                },
                child: Image.asset(
                  images[index],
                  fit: BoxFit.fill,
                )),
          ),
        ),
      ),
    );
  }
}
