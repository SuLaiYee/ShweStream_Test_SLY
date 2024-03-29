import 'package:flutter/material.dart';
import 'package:shwe_stream_test/ShweStreamUI/movie_category_grid.dart';
import 'package:shwe_stream_test/ShweStreamUI/movies_details.dart';
import 'package:shwe_stream_test/ShweStreamUI/process_dialog.dart';

class MovieCategoryList extends StatelessWidget {
  MovieCategoryList({this.title});

  final String title;

  final GlobalKey<State> _keyLoader = new GlobalKey<State>();

  @override
  Widget build(BuildContext context) {
    var moviesItemList = ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 15,
      itemBuilder: (BuildContext context, int index) => Material(
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MoviesDetails()));
          },
          child: Padding(
            padding: const EdgeInsets.fromLTRB(2.0, 0, 2.0, 0),
            child: Image.asset(
              "assets/movieposter1.jpg",
              height: 150.0,
              width: 115.0,
              fit: BoxFit.fill,
            ),
          ),
          //child:  MoviesCategory("assets/movieposter1.jpg", "Vip"),
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

              _handleSubmit(context);
              /*Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          MovieCategoryGrid(title: "Movies Category")));*/
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
          child: Container(
              margin: EdgeInsets.only(bottom: 10.0),
              child: moviesItemList),
        ),
      ],
    );

    return Container(
      //margin: EdgeInsets.fromLTRB(4, 0, 4, 0),
      height: 200,
      child: moviesCategory,
    );


  }

  Future<void> _handleSubmit(BuildContext context) async {
    try {
      Dialogs.showLoadingDialog(context, _keyLoader);//invoking login
      await Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  MovieCategoryGrid(title: "Movies Category")));
      Navigator.of(_keyLoader.currentContext,rootNavigator: true).pop();//close the dialoge
      Navigator.pushReplacementNamed(context, "/moviecategory");
    } catch (error) {
      print(error);
    }
  }
}
