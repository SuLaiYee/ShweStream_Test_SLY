
import 'package:flutter/material.dart';

class DownloadDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: RaisedButton(
        child: Text('Show alert'),
        onPressed: () {
          showAlertDialog(context);
        },
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = FlatButton(
    child: Text("ထွက်မည်", style: TextStyle(fontSize: 16),),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Download"),
    content:  Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 200,
            height: 40,
            margin: EdgeInsets.only(bottom:8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border:
                Border.all(color: Colors.grey, width: 1)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(4),
                  child: Text(
                    "240P (357.7 MB) ", style: TextStyle(fontSize: 16) ,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  child:  Image.asset(
                    "assets/down_pink.png",
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 200,
            height: 40,
            margin: EdgeInsets.only(bottom: 8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border:
                Border.all(color: Colors.grey, width: 1)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(4),
                  child: Text(
                    "360P (559.6 MB) ", style: TextStyle(fontSize: 16) ,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  child:  Image.asset(
                    "assets/down_pink.png",
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 200,
            height: 40,
            margin: EdgeInsets.only(bottom:8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border:
                Border.all(color: Colors.grey, width: 1)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(4),
                  child: Text(
                    "480P (761.5 MB) ", style: TextStyle(fontSize: 16) ,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  child:  Image.asset(
                    "assets/down_pink.png",
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 200,
            height: 40,
            margin: EdgeInsets.only(bottom:8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border:
                Border.all(color: Colors.grey, width: 1)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(4),
                  child: Text(
                    "720P (1.3 GB) ", style: TextStyle(fontSize: 16) ,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  child:  Image.asset(
                    "assets/down_pink.png",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
      builder: (_) => Center( // Aligns the container to center
          child: Container( // A simplified version of dialog.
            width: 330,
            child: alert,
          )
      ),
   /* builder: (BuildContext context) {
      return alert;
    },*/
  );
}