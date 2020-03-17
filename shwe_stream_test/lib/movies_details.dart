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

class _MoviesDetailsState extends State<MoviesDetails>
    with SingleTickerProviderStateMixin {
  TextStyle loginPageStyle =
  TextStyle(fontFamily: 'Montserrat', fontSize: 15.0);

  final String movieDescription =
      "In the movie, a woman from a Kayan community known as the Padaung is depicted next to a giraffe like a zoo animal. (Padaung women are famous for elongating their necks with brass rings.) In another scene, a Padaung woman is fed a banana pushed toward her on a stick.";

  TabController _tabController;
  bool isPressed = false;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    _tabController.addListener(_pressed);
    super.initState();
  }

  _pressed() {
    var newVal = true;
    if (isPressed) {
      newVal = false;
    } else {
      newVal = true;
    }

    setState(() {
      isPressed = newVal;
    });
  }

    @override
    Widget build(BuildContext context) {
      final playButton = Container(
        margin: EdgeInsets.fromLTRB(10, 16, 10, 0),
        child: Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(30.0),
          color: Color(0xffc030b9),
          child: Container(
            child: MaterialButton(
              minWidth: MediaQuery
                  .of(context)
                  .size
                  .width,
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
        ),
      );

      BoxDecoration customGreyShadowBox() {
        return BoxDecoration(
          border: Border.all(color: Color(0xffD3D3D3)),
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
          boxShadow: <BoxShadow>[
            new BoxShadow(
              color: Color(0xffD3D3D3),
              blurRadius: 2.0,
              offset: new Offset(0.0, 1.0),
            ),
          ],
        );
      }

      Widget customTabBar() {
        return Container(
          width: MediaQuery
              .of(context)
              .size
              .width,
          height: 70,
          decoration: customGreyShadowBox(),
          margin: EdgeInsets.fromLTRB(12, 0, 12, 0),
          padding: EdgeInsets.all(8.0),
          child: new TabBar(
            controller: _tabController,
            unselectedLabelColor: Color(0xffc030b9),
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xfff8bbd0), Color(0xfff48fb1)]),
                borderRadius: BorderRadius.circular(50),
                color: Color(0xffc030b9)),
            labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
            tabs: [
              new Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                          child: Image.asset(
                            "assets/video_start.png",
                            fit: BoxFit.fill,
                          )),
                      Expanded(
                          child: Text(
                            'နမူနာ',
                            style: TextStyle(fontSize: 13),
                          )),
                    ],
                  ),
                ),
              ),
              Container(
                width: 100,
                child: new Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                            child: Image.asset(
                              "assets/star_pink.png",
                              fit: BoxFit.fill,
                            )),
                        Expanded(
                            child: Text('သရုပ်ဆောင်များ',
                                style: TextStyle(fontSize: 13))),
                      ],
                    ),
                  ),
                ),
              ),
              new Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                          child: new IconButton(icon: new Icon(isPressed ? Icons
                              .favorite : Icons.favorite_border),
                            onPressed: () => _pressed(),
                            color: Colors.pink,)),
                      Expanded(
                          child:
                          Text('နှစ်သက်မှု', style: TextStyle(fontSize: 13))),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }

      Widget customTabBarView() {
        return new Center(
          child: new Container(
            height: 200,
            margin: EdgeInsets.all(12.0),
            child: new TabBarView(
              controller: _tabController,
              children: <Widget>[
                new SizedBox(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  child: ChewieDemo(),
                ),
                new Card(
                  child: new ListTile(
                    leading: const Icon(Icons.people),
                    title: new Text('Jennifer Lawrence'),
                  ),
                ),
                Visibility(
                  child: new Card(
                    child: new ListTile(
                      leading: const Icon(Icons.location_on),
                      title: new Text(
                          'Latitude: 48.09342\nLongitude: 11.23403'),
                      trailing: new IconButton(
                          icon: const Icon(Icons.my_location),
                          onPressed: () {}),
                    ),
                  ),
                  visible: false,
                )
              ],
            ),
          ),
        );
        /* return new Container(
        height: 150,
        margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
        child: new TabBarView(
          controller: _tabController,
          children: <Widget>[
            new SizedBox(
              width: MediaQuery.of(context).size.width,
              height : 150,
              child: ChewieDemo(),
            ),
            new Card(
              child: new ListTile(
                leading: const Icon(Icons.location_on),
                title: new Text('Latitude: 48.09342\nLongitude: 11.23403'),
                trailing: new IconButton(
                    icon: const Icon(Icons.my_location), onPressed: () {}),
              ),
            ),
            new Card(
              child: new ListTile(
                leading: const Icon(Icons.location_on),
                title: new Text('Latitude: 48.09342\nLongitude: 11.23403'),
                trailing: new IconButton(
                    icon: const Icon(Icons.my_location), onPressed: () {}),
              ),
            ),
          ],
        ),
      );*/
      }

      Widget movieDetailAppBar() {
        return Stack(
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
                  'Movie Name',
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
                ))
          ],
        );
      }

      return Scaffold(
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                movieDetailAppBar(),
                playButton,
                DescriptionTextWidget(text: movieDescription),
                customTabBar(),
                customTabBarView(),
              ],
            ),
          ),
        ),
      );
    }
  }
