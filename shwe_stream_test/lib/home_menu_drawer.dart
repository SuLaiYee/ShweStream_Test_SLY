import 'package:flutter/material.dart';
import 'package:shwe_stream_test/home_page.dart';
import 'package:shwe_stream_test/movie_category_grid.dart';

class HomeMenuDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Drawer(
      child: new ListView(
        children: <Widget>[
          new DrawerHeader(
              decoration: BoxDecoration(color: Color(0xffD6D6D6)),
              child: Container(
                  padding: EdgeInsets.only(left: 18.0),
                  child: SizedBox(
                      child: Image.asset(
                        "assets/drawer_logo_1.png",
                        width: 100,
                        height: 100,
                      ),

                  ))),
          new ListTile(
              title: new Text("ပင်မ စာမျက်နှာ"),
              trailing: new Icon(Icons.home),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              }),
          new ListTile(
              title: new Text("မြန်မာဇာတ်ကားမျာ"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MovieCategoryGrid(title: "မြန်မာဇာတ်ကားများ")));
              }),
          new ListTile(
              title: new Text("ကိုရီးယားဇာတ်ကားများ"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MovieCategoryGrid(title: "ကိုရီးယားဇာတ်ကားများ")));
              }),
          new ListTile(
              title: new Text("အိန္ဒိယရုပ်ရှင်များ"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MovieCategoryGrid(title: "အိန္ဒိယရုပ်ရှင်များ")));
              }),
          new Divider(),
          new ListTile(
              title: new Text("ဒေါင်းလုပ် ဆွဲထားပြီး"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MovieCategoryGrid(title: "အိန္ဒိယရုပ်ရှင်များ")));
              }),
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