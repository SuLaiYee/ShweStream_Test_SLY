import 'package:flutter/material.dart';

class RulesAndQuestionBottomBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  BottomAppBar(
      color: Colors.transparent,
      child: Container(
        margin: EdgeInsets.all(20.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new GestureDetector(
              onTap: () {
                print("hey I tapped 1");
                //Navigator.pushNamed(context, "myRoute");
              },
              child: Text(
                "စည်းကမ်းနှင့် သတ်မှတ်ချက်များ",
              ),
            ),
            new GestureDetector(
              onTap: () {
                //Navigator.pushNamed(context, "myRoute");
              },
              child: Text(
                "|",
                style: TextStyle(color: Color(0xffd83da3)),
              ),
            ),
            new GestureDetector(
              onTap: () {
                print("hey I tapped 2");
                //Navigator.pushNamed(context, "myRoute");
              },
              child: Text(
                "မေးခွန်းများ",
              ),
            ),
          ],
        ),
      ),


      elevation: 0,
    );
  }
}