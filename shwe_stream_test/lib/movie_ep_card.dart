import 'package:flutter/material.dart';

class MovieEpCard extends StatelessWidget {
  MovieEpCard({this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.fromLTRB(8, 4, 8, 8),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  ClipRRect(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),bottomLeft: Radius.circular(10.0)),
                    child: Image.asset(
                      "assets/movieposter7.jpg",
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
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8,0,0,4),
                            child: Text(
                                  "Falling In Love", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                                  textAlign: TextAlign.start,
                                ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8,0,0,4),
                            child: Text(
                                  "Episode 1",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                                  textAlign: TextAlign.start,
                              ),
                          ),
                        ],
                      ),
                  ),
                     Container(
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
                      ),
                ],
              ),
            ),
    );
  }
}
