import 'package:flutter/material.dart';
import 'package:shwe_stream_test/ShweStreamUI/app_constants.dart';
import 'package:shwe_stream_test/ShweStreamUI/data_search.dart';
import 'package:shwe_stream_test/ShweStreamUI/home_page.dart';
import 'package:shwe_stream_test/ShweStreamUI/user_profile.dart';
enum ConfirmAction { CANCEL, ACCEPT }
class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  final AppBar appBar;
  final List<Widget> widgets;

  /// you can add more fields that meet your needs

  const BaseAppBar({Key key, this.title, this.appBar, this.widgets})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    void choiceAction(String choice) {
      if (choice == AppConstants.userProfile) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => UserProfile()));
      } else if (choice == AppConstants.logout) {
        showDialog<ConfirmAction>(
          context: context,
          barrierDismissible: false, // user must tap button for close dialog!
          builder: (BuildContext context) {
            return AlertDialog(
              content: const Text(
                  'အသုံးပြုမှု မှတ်တမ်းများအားဖျက်ပါမည်။\nအကောင့်မှ ထွက်မှာ သေချာပါသလား?',
                  style: TextStyle(fontSize: 15)),
              actions: <Widget>[
                FlatButton(
                  child: const Text('မထွက်ပါ'),
                  onPressed: () {
                    Navigator.of(context).pop(ConfirmAction.CANCEL);
                  },
                ),
                FlatButton(
                  child: const Text('ထွက်မည်'),
                  onPressed: () {
                    Navigator.of(context).pop(ConfirmAction.ACCEPT);
                  },
                )
              ],
            );
          },
        );
      }
    }

    return new AppBar(
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[Color(0xff9c1dda), Color(0xffee498f)]),
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: title,
            flex: 8,
          ),
          Expanded(
            child: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                tooltip: 'Search',
                onPressed: () {
                  showSearch(context: context, delegate: DataSearch());
                  //Navigator.of(context).push(_createRoute());
                }),
            flex: 1,
          ),
        ],
      ),
      backgroundColor: Color(0xffde429d),
      actions: <Widget>[
        PopupMenuButton<String>(
          onSelected: choiceAction,
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            PopupMenuItem<String>(
              value: "User Profile",
              child: Container(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Image.asset(
                          'assets/user_profile.png',
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Text("ကိုယ်ပိုင် အချက်အလက်", style: Theme.of(context).textTheme.body1),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            PopupMenuItem<String>(
              value: 'Logout',
              child: Container(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Image.asset(
                          'assets/log_out.png',
                        ),
                         Padding(
                           padding: const EdgeInsets.only(left: 4.0),
                           child: Text('အကောင့်မှ ထွက်ရန်', style: Theme.of(context).textTheme.body1),
                         ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );


  }



  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
