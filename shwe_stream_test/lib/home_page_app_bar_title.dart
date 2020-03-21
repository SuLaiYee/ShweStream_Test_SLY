import 'package:flutter/material.dart';

class HomePageAppBarTitle extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child:  Image.asset(
                  'assets/landing_tittle.png',
                  fit: BoxFit.contain,
                  height: 33 ,
                  alignment: Alignment.centerLeft,
                ),
                flex: 7,
              ),
              Expanded(
                child: IconButton(
                  icon: Icon(Icons.search, color: Colors.white,),
                  tooltip: 'Search',
                  onPressed: null,
                ),
                flex: 2,
              ),
              Expanded(
                child: IconButton(
                  icon: Icon(Icons.notifications_none, color: Colors.white,),
                  tooltip: 'Setting',
                  onPressed: null,
                ),
              )
            ],
          );

  }
}