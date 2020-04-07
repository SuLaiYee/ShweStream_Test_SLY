import 'package:flutter/material.dart';
import 'package:shwe_stream_test/PODObject/movies_download_info.dart';
import 'package:shwe_stream_test/base_app_bar.dart';

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
  TextStyle moviesDownloadPageStyle =
      TextStyle(fontFamily: 'Montserrat', fontSize: 15.0);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: BaseAppBar(
        title: Text("ဒေါင်းလုပ်", style: TextStyle(fontSize: 18),),
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
    Widget progressBar = Container(
      margin: EdgeInsets.fromLTRB(8, 4, 8, 4),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.only(bottom: 20.0),
              child: LinearProgressIndicator(
                backgroundColor: Colors.red,
                valueColor: AlwaysStoppedAnimation<Color>(
                  Color(0xfff48fb1),
                ),
                value: 0.8,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                //padding: EdgeInsets.only(top: 12),
                child: Image.asset(
                  "assets/play.png",
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom:4.0),
                child: Text(
                  " ",
                  style: TextStyle(fontSize: 13),
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          )
        ],
      ),
    );

    return Container(
      margin: EdgeInsets.fromLTRB(8, 4, 8, 4),
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
                height: 120.0,
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
                    alignment:Alignment.topRight,
                    child: Container(
                      width: 30,
                      height: 30,
                      padding: EdgeInsets.all(4.0),
                      margin: EdgeInsets.fromLTRB(0, 8, 8, 4),
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

                  /* Padding(
                    padding: const EdgeInsets.fromLTRB(8,0,0,4),
                    child: Text(
                      movies.movEpsoide,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                      textAlign: TextAlign.start,
                    ),
                  ),*/
                ],
              ),
            ),
            /*Container(
              width: 80,
              height: 55,
              padding: EdgeInsets.all(4.0),
              margin: EdgeInsets.only(right: 16.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border:
                  Border.all(color: Colors.grey, width: 1)),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    child:  Image.asset(
                      "assets/down_pink.png",

                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Download" ,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
