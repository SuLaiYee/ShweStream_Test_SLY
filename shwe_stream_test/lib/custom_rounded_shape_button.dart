import 'package:flutter/material.dart';
class CustomRoundedShapeButton extends StatefulWidget{
  final String btnText;
  final String navigatePage;
  CustomRoundedShapeButton({Key key, @required this.btnText, @required this.navigatePage}) : super(key: key);

  @override
  _CustomRoundedShapeButtonState createState() => _CustomRoundedShapeButtonState();
}

class _CustomRoundedShapeButtonState extends State<CustomRoundedShapeButton> {
  TextStyle btnStyle =
  TextStyle(fontFamily: 'Montserrat', fontSize: 15.0);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
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
    );
  }
}

