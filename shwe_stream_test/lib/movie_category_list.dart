import 'package:flutter/material.dart';
import 'package:shwe_stream_test/movie_category_grid.dart';

class MovieCategoryList extends StatelessWidget {
  MovieCategoryList({this.title});

  final String title;

  Container MoviesCategory(String movieLogo, String movieName) {
    return Container(
        margin: EdgeInsets.fromLTRB(4, 4, 0, 0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 4),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  movieLogo,
                  height: 150.0,
                  width: 110.0,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: Text(movieName),
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    var moviesItemList = ListView.builder(
      shrinkWrap: true,
     scrollDirection: Axis.horizontal,
      itemCount: 15,
      itemBuilder: (BuildContext context, int index) => Card(
        child:  MoviesCategory("assets/movieposter.jpg", "Vip"),
      ),
    );

     /* children: <Widget>[

        MoviesCategory("assets/movieposter1.jpg", "Another Miss oh"),
        MoviesCategory("assets/movieposter5.jpg", "We Got"),
        MoviesCategory("assets/movieposter6.jpg", "S4"),
        MoviesCategory("assets/movieposter2.jpg", "Rommance"),
        MoviesCategory("assets/movieposter3.jpg", "Descend"),
        MoviesCategory("assets/movieposter4.jpg", "Ghost"),
      ],*/

    //Movie List Title
    var movieCategoryTitle = Container(
      margin: EdgeInsets.fromLTRB(8, 8, 8, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          MovieCategoryGrid(title: "Movies Category")));
            },
            child: Text(
              "အားလုံး >>",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );

    var moviesCategory = Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        movieCategoryTitle,
        Expanded(
          child: moviesItemList,
        ),
      ],
    );

    return Container(
      //margin: EdgeInsets.fromLTRB(4, 0, 4, 0),
      height: 225,
      child: moviesCategory,
    );
  }
}
