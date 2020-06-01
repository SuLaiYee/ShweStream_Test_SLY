import 'package:flutter/material.dart';
import 'package:shwe_stream_test/PODObject/movies_download_info.dart';
import 'package:shwe_stream_test/ShweStreamUI/base_app_bar.dart';

class MoviesDownloadPage extends StatefulWidget {
  final List<MoviesDownloadInfo> movies = new List();

  MoviesDownloadPage() {
    movies.add(MoviesDownloadInfo(
        'VIP Father and Mother', 'Ep 1', 'assets/movieposter7.jpg'));
    movies.add(MoviesDownloadInfo(
        'Mother Land From Sky', 'Ep 2', 'assets/movieposter5.jpg'));
    movies.add(MoviesDownloadInfo(
        'Hey From Friend', 'Ep 12', 'assets/movieposter6.jpg'));
    movies.add(MoviesDownloadInfo(
        'Boy and Girl Relationship', 'Ep 2', 'assets/movieposter4.jpg'));
    movies.add(MoviesDownloadInfo(
        'Stars From The Sky', 'Ep 1', 'assets/movieposter3.jpg'));
    movies.add(MoviesDownloadInfo(
        'Blue Sea', 'Ep 2', 'assets/movieposter2.jpg'));
  }

  @override
  _MoviesDownloadPageState createState() => _MoviesDownloadPageState();
}

class _MoviesDownloadPageState extends State<MoviesDownloadPage> {
  bool isPressed = false;
  TextStyle moviesDownloadPageStyle =
      TextStyle(fontFamily: 'Montserrat', fontSize: 15.0);

  Icon _affectedByStateChange = new Icon(
    Icons.play_arrow,
    color: Colors.grey,
  );

  _pressed() {
    var newVal = true;
    if(isPressed) {
      newVal = false;
    } else {
      newVal = true;
    }

    setState((){
      isPressed = newVal;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: BaseAppBar(
        title: Text(
          "ဒေါင်းလုပ်",
          style: TextStyle(fontSize: 18),
        ),
        appBar: AppBar(),
        widgets: <Widget>[Icon(Icons.more_vert)],
      ),
      body: Container(
        padding: EdgeInsets.all(4.0),
        child: ListView.builder(
          itemBuilder: (BuildContext ctxt, int index) {
            return _buildListItem(widget.movies[index], ctxt);
          },
          itemCount: widget.movies.length,
        ),
      ),
    );
  }

  _buildListItem(MoviesDownloadInfo movies, BuildContext context) {
   /* _thisWillAffectTheState() {
      _affectedByStateChange = new Icon(Icons.pause, color: Colors.blue);
    }

    _thisWillAlsoAffectTheState() {
      _affectedByStateChange = new Icon(Icons.favorite, color: Colors.red);
    }*/

    Widget progressBar = Container(
      margin: EdgeInsets.fromLTRB(8, 4, 8, 4),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.only(bottom: 20.0),
              child: LinearProgressIndicator(
                backgroundColor: Colors.pinkAccent,
                valueColor: AlwaysStoppedAnimation<Color>(
                  Color(0xfad48fb1),
                ),
                value: 0.8,
              ),
            ),
            flex: 5,
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                new IconButton(
                  icon: new Icon(isPressed ? Icons.play_arrow:Icons.pause),
                  onPressed:() => _pressed(),
                  iconSize: 25.0,
                  color: Colors.pink,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Text(
                    " ",
                    style: TextStyle(fontSize: 13),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
            flex: 1,
          )
        ],
      ),
    );

    return Container(
      margin: EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0)),
              child: Image.asset(
                movies.movImage,
                height: 130.0,
                width: 110.0,
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 25,
                      height: 25,
                      margin: EdgeInsets.only(right: 12),
                      padding: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.grey, width: 1)),
                      child: SizedBox(
                        child: Image.asset(
                          "assets/remove_service.png",
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 4),
                    child: Text(
                      movies.movTitle + " " + movies.movEpsoide,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  progressBar,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
