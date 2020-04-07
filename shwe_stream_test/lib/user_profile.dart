import 'package:flutter/material.dart';
import 'package:shwe_stream_test/base_app_bar.dart';

class UserProfile extends StatelessWidget {
  /*final Widget phoneField = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 30,
            height: 30.0,
            child: Image.asset(
              "assets/user_profile.png",
              fit: BoxFit.fill,
            ),
          ),
          TextField(
            keyboardType: TextInputType.number,
            obscureText: false,
            enabled: false,
            textAlign: TextAlign.start,
            cursorColor: Color(0xffe64a8b),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20, 8, 8, 8),
              hintText: "0943188471",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
            ),
          ),
        ],
      );
  final Widget packageField = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 30,
            height: 30.0,
            child: Image.asset(
              "assets/play.png",
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            child: TextField(
              keyboardType: TextInputType.number,
              obscureText: false,
              enabled: false,
              textAlign: TextAlign.start,
              cursorColor: Color(0xffe64a8b),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20, 8, 8, 8),
                hintText: "အသုံးပြုမှု : ဝန်ဆောင်မှုရယူပြီး",
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
              ),
            ),
          ),
        ],
      );
*/

  final Widget phoneField = Container(
    height: 50,
    padding: EdgeInsets.all(4.0),
    margin: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 1)),
    child: Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            child: Image.asset(
              "assets/user_profile.png",
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            "0943188471",
            style: TextStyle(fontSize: 14),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ),
  );
  final Widget packageField = Container(
    height: 50,
    padding: EdgeInsets.all(4.0),
    margin: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 1)),
    child: Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            child: Image.asset(
              "assets/play.png",
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            "အသုံးပြုမှု : ဝန်ဆောင်မှုရယူပြီး",
            style: TextStyle(fontSize: 14),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: BaseAppBar(
        title: Text("ကိုယ်ပိုင်အချက်အလက်", style: TextStyle(fontSize: 18)),
        appBar: AppBar(),
        widgets: <Widget>[Icon(Icons.more_vert)],
      ),
      body: Container(
        margin: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                phoneField,
                packageField,
              ],
            ),
      ),
    );
  }
}
