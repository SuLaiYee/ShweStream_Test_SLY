import 'package:flutter/material.dart';
import 'package:shwe_stream_test/movie_category_grid.dart';
import 'package:shwe_stream_test/movies_details.dart';

class MovieCategoryList extends StatelessWidget {
  MovieCategoryList({this.title});

  final String title;

  Container MoviesCategory(String movieLogo, String movieName) {
    return Container(
        //margin: EdgeInsets.fromLTRB(4, 4, 0, 0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),topRight: Radius.circular(10.0)),
                  child: Image.asset(
                    movieLogo,
                    height: 150.0,
                    width: 110.0,
                    fit: BoxFit.fill,
                  ),
                ),
            ),
            SizedBox(
              height: 30,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(movieName, textAlign: TextAlign.center,),
                )),
          ],
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    var moviesItemList = ListView.builder(
      shrinkWrap: true,
     scrollDirection: Axis.horizontal,
      itemCount: 15,
      itemBuilder: (BuildContext context, int index) => Material(
        child: InkWell(
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MoviesDetails()));
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(4, 0, 0, 4),
            child: Card(
              child:  MoviesCategory("assets/movieposter1.jpg", "Vip"),
            ),
          ),
        ),
      ),
    );

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
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
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
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
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
      height: 230,
      child: moviesCategory,
    );
  }
}
