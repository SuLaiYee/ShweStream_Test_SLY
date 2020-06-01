import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shwe_stream_test/ShweStreamUI/base_app_bar.dart';
import 'package:shwe_stream_test/ShweStreamUI/movies_details.dart';

class NotificationSettings extends StatefulWidget {
  NotificationSettings({this.title});

  final String title;

  @override
  _NotificationSettingsState createState() => _NotificationSettingsState();

}

class _NotificationSettingsState extends State<NotificationSettings> {
  _NotificationSettingsState();
  initState(){
    super.initState();
  }

  // Defining a variable for storing click state
  bool isPressed = false;

  // Click function for changing the state on click
  _pressed() {
    var newVal = true;
    if(isPressed) {
      newVal = false;
    } else {
      newVal = true;
    }

    // This function is required for changing the state.
    // Whenever this function is called it refresh the page with new value
    setState((){
      isPressed = newVal;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: BaseAppBar(
        title: Text(widget.title),
        appBar: AppBar(),
        widgets: <Widget>[Icon(Icons.more_vert)],
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(16, 50, 16, 16),
        child: RaisedButton(
          onPressed: () {
            _pressed();
            //Navigator.pushNamed(context, navigatePage);
          },
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
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
              height: 45,
              //constraints: BoxConstraints(maxWidth: 800.0, minHeight: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: new IconButton(
                    icon: new Icon(isPressed ? Icons.notifications_active:Icons.notifications_off),
                      onPressed:() => _pressed(),
                      color: Colors.white,/*SizedBox(
                      child: Image.asset(
                        "assets/noti_pink.png",
                      ),
                    ),*/
                  )
                  ),
                  Expanded(
                      child: Text( isPressed?
                        "အသိပေးချက်များ ဖွင့်ရန်" : "အသိပေးချက်များ ပိတ်ရန်",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
