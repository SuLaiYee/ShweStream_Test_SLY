
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InternetConnectionDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

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
          Navigator.of(context).pop();
        },
      ),
    );
    return AlertDialog(
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


  }
}
