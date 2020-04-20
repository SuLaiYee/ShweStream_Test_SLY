import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:chewie/src/chewie_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:shwe_stream_test/download_dialog.dart';
import 'package:shwe_stream_test/movie_ep_card.dart';
import 'package:shwe_stream_test/movies_description.dart';
import 'package:shwe_stream_test/shwestream_video_player.dart';
import 'package:shwe_stream_test/snack_bar.dart';
import 'package:shwe_stream_test/chewie_demo_player.dart';
import 'package:video_player/video_player.dart';

class MoviesDetails extends StatefulWidget {
  MoviesDetails({Key key}) : super(key: key);

  @override
  _MoviesDetailsState createState() => _MoviesDetailsState();
}

class _MoviesDetailsState extends State<MoviesDetails>
    with SingleTickerProviderStateMixin {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  TextStyle loginPageStyle =
      TextStyle(fontFamily: 'Montserrat', fontSize: 15.0);

  final String movieDescription =
      "In the movie, a woman from a Kayan community known as the Padaung is depicted next to a giraffe like a zoo animal. (Padaung women are famous for elongating their necks with brass rings.) In another scene, a Padaung woman is fed a banana pushed toward her on a stick.";

  TabController _tabController;
  bool isPressed = false;
  bool _isVisibleVideo = true;
  bool _isVisibleActor = false;
  bool _isVisibleFavouite = false;

  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this);
    _tabController.addListener(_pressed);
    super.initState();
  }

  _pressed() {
    var newVal = true;
    if (isPressed) {
      //("Successful Add Favourite");
      newVal = false;
    } else {
      newVal = true;
    }

    setState(() {
      isPressed = newVal;
      //SnackBarPage(title: "Successful Add Favourite");
    });
  }

  @override
  Widget build(BuildContext context) {
    final playButton = Container(
      margin: EdgeInsets.fromLTRB(16, 16, 16,0),
      height: 50,

      /*RaisedButton(
        onPressed: () {
          Navigator.pushNamed(context, widget.navigatePage);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Color(0xff9c1dda), Color(0xffee498f)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(30.0)
          ),
          child: Container(
            //constraints: BoxConstraints(maxWidth: 800.0, minHeight: 50.0),
            alignment: Alignment.center,
            child: Text(
              widget.btnText,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      );*/

      child: RaisedButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
            padding: EdgeInsets.all(0.0),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChewieDemo()));
            },
            child: Ink(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Color(0xff9c1dda), Color(0xffee498f)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(30.0)
              ),
            child: Container(
              //constraints: BoxConstraints(maxWidth: 800.0, minHeight: 50.0),
              alignment: Alignment.center,
              child: Text(
                "PLAY".toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(
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
        width: MediaQuery.of(context).size.width,
        height: 70,
        decoration: customGreyShadowBox(),
        margin: EdgeInsets.fromLTRB(12, 4, 12, 0),
        padding: EdgeInsets.fromLTRB(2, 8, 2, 8),
        child: new TabBar(
          controller: _tabController,
          unselectedLabelColor: Color(0xffe64a8b),
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xfff8bbd0), Color(0xfff48fb1)]),
              borderRadius: BorderRadius.circular(50),
              color: Color(0xffe64a8b)),
          labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
          onTap: (index) {
            if (index == 0) {
              _isVisibleVideo = true;
              _isVisibleActor = false;
              _isVisibleFavouite = false;
            }
            if (index == 1) {
              _isVisibleActor = true;
              _isVisibleVideo = false;
              _isVisibleFavouite = false;
            }
            if (index == 3) {
              _isVisibleFavouite = true;
              _isVisibleVideo = false;
              _isVisibleActor = false;
            }
            if(index == 2){
              showAlertDialog(context);
            }
          },
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
                        child: Image.asset(
                          "assets/down_pink.png",
                          fit: BoxFit.fill,
                        )),
                    Expanded(
                        child:
                        Text('ဒေါင်းလုပ်', style: TextStyle(fontSize: 13))),
                  ],
                ),
              ),
            ),
            new Tab(
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    Expanded(
                        child: Image.asset(
                          "assets/heart_outline.png",
                      fit: BoxFit.fill,
                    )),
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

    Widget showSimpleVideo() {
      return Visibility(
        child: new Container(
         // width: MediaQuery.of(context).size.width,
          height: 200,
          margin: EdgeInsets.fromLTRB(20, 8, 0, 8),
          child: Center(child: VideoPlayerScreen()),
          ),
        visible: _isVisibleVideo,
      );
    }

    Widget showActors() {
      return Visibility(
        child: new Container(
          margin: EdgeInsets.fromLTRB(8, 0, 8, 4),
          child: new SizedBox(
            child: new ListTile(
              leading: const Icon(Icons.people),
              title: new Text('Jennifer Lawrence '),
            ),
          ),
        ),
        visible: _isVisibleActor,
      );
    }

    Widget movieDetailAppBar() {
      return Stack(
        children: <Widget>[
          Container(
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: new ExactAssetImage('assets/movieposter7.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(
                ' ',
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
                /*Expanded(
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
                ),*/
                Expanded(
                  child: IconButton(
                    icon: Icon(
                      Icons.more_vert,
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
      key: _scaffoldKey,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              movieDetailAppBar(),
              playButton,
              DescriptionTextWidget(text: movieDescription),
              customTabBar(),
              showActors(),
              showSimpleVideo(),
              MovieEpCard(),
            ],
          ),
        ),
      ),
    );
  }

  void createSnackBar(String message) {
    final snackBar =
        new SnackBar(content: new Text(message), backgroundColor: Colors.red);

    // Find the Scaffold in the Widget tree and use it to show a SnackBar!
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }
}
