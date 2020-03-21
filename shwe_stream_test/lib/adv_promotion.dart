import 'package:flutter/material.dart';

class ADPromotion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      child: FlatButton(
        onPressed: () {
          /*Navigator.pushNamed(context, widget.navigatePage);*/
        },
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Color(0xffe9b60c), Color(0xff92781e)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              //borderRadius: BorderRadius.circular(30.0)
          ),
          child: Container(
            //constraints: BoxConstraints(maxWidth: 800.0, minHeight: 50.0),
            alignment: Alignment.center,
            child: Text(
              "ရွှေဒင်္ဂါးများကံထူးခွင့် ၃၁.၃.၂၀၂၀ အထိ",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      )


      /*ButtonTheme(
        // minWidth: MediaQuery.of(context).size.width,
        // color: Colors.blue,
        //width: double.infinity,
        height: 55,
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10.0),
            side: BorderSide(color: Color(0xff92781e))),
        child: RaisedButton(
          onPressed: () {},
          color: Color(0xfffdc816),
          textColor: Colors.white,
          disabledColor: Colors.grey,
          disabledTextColor: Colors.black,
          splashColor: Colors.brown,
          child: Text(
            "To Win Gold Coin Until 3.3.2020",
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),*/
    );
  }
}
