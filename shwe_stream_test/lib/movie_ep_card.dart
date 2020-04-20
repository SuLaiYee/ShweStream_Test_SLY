import 'package:flutter/material.dart';

class MovieEpCard extends StatelessWidget {
  MovieEpCard({this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(12, 4, 12, 12),
      child: Card(
        elevation: 3,
        color: Color(0xFFEEEEEE),
        /*shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3.0),
        ),*/
        child: Column(
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0,12.0,0,0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(1.0),
                    child: Image.asset(
                      "assets/movieposter6.jpg",
                      height: 100.0,
                      width: 160.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 20, 0, 4),
                        child: Text(
                          "Falling In Love",
                          style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 4, 0, 4),
                        child: Text(
                          "Episode 1",
                          style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 35,
                  height: 35,
                  padding: EdgeInsets.all(4.0),
                  margin: EdgeInsets.fromLTRB(16,20,16,16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.grey, width: 1)),
                  child: SizedBox(
                    child: Image.asset(
                      "assets/down_pink.png",
                    ),
                  ),
                ),

                //download with image and text design
                /* Container(
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
            Padding(
              padding: const EdgeInsets.fromLTRB(12,8,12,12),
              child: Text("Laura Linney and Elizabeth Banks are veterans and I do not recall them throwing away their character every before... but the best thing about this movie is the top 20 movies", style: TextStyle(fontSize: 14),),
            )
          ],

        ),
      ),
    );
  }
}
