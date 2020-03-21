import 'package:flutter/material.dart';
import 'package:shwe_stream_test/opt_code_page.dart';
import 'package:shwe_stream_test/rule%20_question_bottom_app_bar.dart';

import 'custom_rounded_shape_button.dart';

class PackageGetService extends StatefulWidget {
  PackageGetService({Key key}) : super(key: key);

  @override
  _PackageGetServiceState createState() => _PackageGetServiceState();
}

class _PackageGetServiceState extends State<PackageGetService> {
  TextStyle packageStyle = TextStyle(fontFamily: 'Montserrat', fontSize: 15.0);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: new SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 330,
                  decoration:new BoxDecoration(
                    image: new DecorationImage(image: new ExactAssetImage('assets/landing_top_ad.png'),
                    fit: BoxFit.fill),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "မြန်မာရုပ်ရှင်၊ ဗီဒီယိုနှင့်ကိုရီးယားဇာတ်လမ်းတွဲများကို စိတ်ကြိုက်ကြည့်ရှုနိုင်ပါသည််။",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, color: Color(0xffe64a8b)),
                  ),
                ),
                //SizedBox(height: 15.0),
                Container(
                  width: 150,
                  child: Divider(
                    thickness: 3,
                    color: Color(0xffe64a8b),
                  ),
                ),
                Text("တစ်ရက် ၉၉ကျပ်",
                    textAlign: TextAlign.center, style: TextStyle(fontSize: 15)),
                Container(
                  width: 150,
                  child: Divider(
                    thickness: 3,
                    color: Color(0xffd83da3),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(32, 8, 32, 8),
                  width: 180,
                  height: 50,
                  child: CustomRoundedShapeButton(
                      btnText: "၀န်ဆောင်မှုရယူရန်", navigatePage: "/optpage"),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: RulesAndQuestionBottomBar(),
    );
  }
}
