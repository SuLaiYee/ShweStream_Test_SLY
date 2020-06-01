
import 'package:android_intent/android_intent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InternetConnectionDialog extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      child: showInternetConnectionDialog(context),
    );
  }
}

showInternetConnectionDialog(BuildContext context) {

  const platform = const MethodChannel('com.myapp/intent');
  // Create button
  Widget cancelBtn = Container(
    margin: EdgeInsets.only(bottom: 4),
    height: 45,
    child : RaisedButton(
      color: Color(0xffee498f),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text("CANCEL", style: TextStyle(fontSize: 18, color: Colors.white)),
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    ),
  );

  Widget reloadBtn = Container(
    margin: EdgeInsets.only(bottom: 4),
    height: 45,
    child: RaisedButton(
      color: Color(0xffee498f),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text("RELOAD", style: TextStyle(fontSize: 16,color: Colors.white)),
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    ),
  );

  Widget settingBtn = Container(
    height: 45,
    margin: EdgeInsets.only(bottom: 4),
    child: RaisedButton(
      color: Color(0xffee498f),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text("SETTING", style: TextStyle(fontSize: 16, color: Colors.white),),
      ),
      onPressed: () {
        final AndroidIntent intent = new AndroidIntent(
          action: 'android.settings.SETTINGS');
        intent.launch();
      },
    ),
  );


  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    content:  Container(
      child: Text(
        "အင်တာနက် ဖွင့်ထားခြင်း မရှိပါ။\nSETTING မှတဆင့် အင်တာနက်ဖွင့်ပြီး RELOAD ကိုနှိပ်ပါ။", textAlign: TextAlign.center,
      ),
    ),
    actions: [
      cancelBtn,
      reloadBtn,
      settingBtn,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (_) => Center( // Aligns the container to center
        child: Container( // A simplified version of dialog.
          child: alert,
        )
    ),
    /* builder: (BuildContext context) {
      return alert;
    },*/
  );
}
