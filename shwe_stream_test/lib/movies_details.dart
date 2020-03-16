import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:chewie/src/chewie_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:shwe_stream_test/movies_description.dart';
import 'package:shwe_stream_test/video_player.dart';
import 'package:video_player/video_player.dart';

class MoviesDetails extends StatefulWidget {
  MoviesDetails({Key key}) : super(key: key);

  @override
  _MoviesDetailsState createState() => _MoviesDetailsState();
}

class _MoviesDetailsState extends State<MoviesDetails> with SingleTickerProviderStateMixin{
  TextStyle loginPageStyle =
      TextStyle(fontFamily: 'Montserrat', fontSize: 15.0);

  final String movieDescription =
      "In the movie, a woman from a Kayan community known as the Padaung is depicted next to a giraffe like a zoo animal. (Padaung women are famous for elongating their necks with brass rings.) In another scene, a Padaung woman is fed a banana pushed toward her on a stick.";

  TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    final playButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xffc030b9),
      child: Container(
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(8.0),
          onPressed: () {},
          child: Text(
            "PLAY".toUpperCase(),
            textAlign: TextAlign.center,
            style: loginPageStyle.copyWith(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 400,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: new ExactAssetImage('assets/movieposter7.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'mrflutter.com',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: AppBar(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              "VIP",
                            ),
                            flex: 7,
                          ),
                          Expanded(
                            child: IconButton(
                              icon: Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              tooltip: 'Search',
                              onPressed: () {
                                print("Hey");
                              },
                            ),
                            flex: 2,
                          ),
                          Expanded(
                            child: IconButton(
                              icon: Icon(
                                Icons.notifications_none,
                                color: Colors.white,
                              ),
                              tooltip: 'Notification',
                              onPressed: null,
                            ),
                          )
                        ],
                      ),
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ),
                  )
                ],
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(10, 16, 10, 0), child: playButton),
              DescriptionTextWidget(text: movieDescription),
              new Container(
                  color: Colors.white,
                  margin: EdgeInsets.fromLTRB(12, 0, 12, 0),
               /* padding: EdgeInsets.fromLTRB(12, 20,12, 0),*/
                //decoration: new BoxDecoration(color: Theme.of(context).primaryColor),
                child: new TabBar(
                  controller: _tabController,
                  unselectedLabelColor:  Color(0xffc030b9),
                  indicatorPadding: EdgeInsets.only(left: 30, right: 30),
                  indicator: ShapeDecoration(
                      color: Color(0xffc030b9),
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(
                            color: Color(0xffc030b9),
                          ))),
                  /*unselectedLabelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      color: Colors.white),*/
                  tabs: [
                    new Tab(
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: <Widget>[
                            const Icon(Icons.my_location),
                            Text('Location'),
                          ],
                        ),
                      ),
                    ),
                    new Tab(
                      icon: const Icon(Icons.my_location),
                      text: 'Location',
                    ),
                    new Tab(
                      icon: const Icon(Icons.my_location),
                      text: 'Location',
                    ),
                  ],
                ),
              ),
              new Container(
                height: 80.0,
                margin: EdgeInsets.fromLTRB(8, 0, 8, 0),
                child: new TabBarView(
                  controller: _tabController,
                  children: <Widget>[
                    new Card(
                      child: new ListTile(
                        leading: const Icon(Icons.home),
                        title: new TextField(
                          decoration: const InputDecoration(hintText: 'Search for address...'),
                        ),
                      ),
                    ),
                    new Card(
                      child: new ListTile(
                        leading: const Icon(Icons.location_on),
                        title: new Text('Latitude: 48.09342\nLongitude: 11.23403'),
                        trailing: new IconButton(icon: const Icon(Icons.my_location), onPressed: () {}),
                      ),
                    ),
                    new Card(
                      child: new ListTile(
                        leading: const Icon(Icons.location_on),
                        title: new Text('Latitude: 48.09342\nLongitude: 11.23403'),
                        trailing: new IconButton(icon: const Icon(Icons.my_location), onPressed: () {}),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
