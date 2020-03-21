import 'package:flutter/material.dart';
import 'package:shwe_stream_test/custom_rounded_shape_button.dart';
import 'package:shwe_stream_test/package_get_service.dart';
import 'package:shwe_stream_test/rule%20_question_bottom_app_bar.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextStyle loginPageStyle =
  TextStyle(fontFamily: 'Montserrat', fontSize: 15.0);

  @override
  Widget build(BuildContext context) {
    Widget phoneField = Container(
        margin: EdgeInsets.fromLTRB(32, 16, 32, 16),
        child: TextField(
          keyboardType: TextInputType.number,
          obscureText: false,
          style: loginPageStyle,
          textAlign: TextAlign.start,
          cursorColor: Color(0xffe64a8b),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(20, 8, 8, 8),
            hintText: "MPT နံပါတ်ထည့်ရန်",
            prefixText: "09 -  ",
            border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
          ),
        ));

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 60),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: SizedBox(
                      width: 400,
                      height: 250.0,
                      child: Image.asset(
                        "assets/login_white.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    "မြန်မာရုပ်ရှင်၊ ဗီဒီယိုနှင့်ကိုရီးယားဇာတ်လမ်းတွဲများကို စိတ်ကြိုက်ကြည့်ရှုနိုင်ပါသည််။",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, color: Color(0xffe64a8b)),
                  ),
                  SizedBox(height: 15.0),
                  Text("တစ်ရက် ၉၉ကျပ်",
                      textAlign: TextAlign.center,
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  phoneField,
                  Container(
                    margin: EdgeInsets.fromLTRB(32, 8, 32, 8),
                    height: 50,
                    child: CustomRoundedShapeButton(
                            btnText: "ဝင်မည်", navigatePage: "/package"),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(child: RulesAndQuestionBottomBar()),
    );
  }
}
