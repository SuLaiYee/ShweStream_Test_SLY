import 'package:flutter/material.dart';

class HomeMenuDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Drawer(
      child: new ListView(
        children: <Widget>[
          new DrawerHeader(
              decoration: BoxDecoration(color: Color(0xffb06fa2)),
              child: Container(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        "assets/logo.jpg",
                        width: 60,
                        height: 60,
                      ),
                      Container(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          "SHWEStream",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ))),
          new ListTile(
              title: new Text("ပင်မ စာမျက်နှာ"),
              trailing: new Icon(Icons.home),
              onTap: () {}),
          new ListTile(
              title: new Text("မြန်မာဇာတ်ကားမျာ"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {}),
          new ListTile(
              title: new Text("ကိုရီးယားဇာတ်ကားများ"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {}),
          new ListTile(
              title: new Text("အိန္ဒိယရုပ်ရှင်များ"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {}),
          new Divider(),
          new ListTile(
              title: new Text("ဒေါင်းလုပ် ဆွဲထားပြီး"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {}),
          new ListTile(
              title: new Text("ကိုယ့်စိတ်ကြိုက်"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {}),
          new ListTile(
              title: new Text("ဝန်ဆောင်မှု ပယ်ဖျက်ရန်"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {}),
          new ListTile(
              title: new Text("အချက်အလက် ပြင်ဆင်ရန်"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {}),
          new ListTile(
              title: new Text("စည်းကမ်း သတ်မှတ်ချက်များ"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {}),
          new ListTile(
              title: new Text("မေးလေ့ရှိသော မေးခွန်းမျာ"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {}),
          new ListTile(
              title: new Text("ကျွနုပ်တို့ အကြောင်း"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {}),
          /*new ListTile(
                title: new Text("Close"),
                trailing: new Icon(Icons.cancel),
                onTap: () => Navigator.of(context).pop(),
              )*/
        ],
      ),
    );
  }
}