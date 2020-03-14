import 'package:flutter/material.dart';

class ADPromotion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: ButtonTheme(
        // minWidth: MediaQuery.of(context).size.width,
        // color: Colors.blue,
        //width: double.infinity,
        height: 55,
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10.0),
            side: BorderSide(color: Color(0xffb06fa2))),
        child: RaisedButton(
          onPressed: () {},
          color: Color(0xffb06fa2),
          textColor: Colors.white,
          disabledColor: Colors.grey,
          disabledTextColor: Colors.black,
          splashColor: Colors.brown,
          child: Text(
            "To Win Gold Coin Until 3.3.2020",
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
