import 'package:flutter/material.dart';
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
    final phoneField = TextField(
      keyboardType: TextInputType.number,
      obscureText: false,
      style: loginPageStyle,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20, 16, 16, 16),
        hintText: "Enter Your Phone Number",
        prefixText: "09 -  ",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
      ),
    );

    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xffc030b9),
      child: MaterialButton(
        minWidth: MediaQuery
            .of(context)
            .size
            .width,
        padding: EdgeInsets.all(8.0),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PackageGetService()));
        },
        child: Text(
          "ဝင်မည်".toUpperCase(),
          textAlign: TextAlign.center,
          style: loginPageStyle.copyWith(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 250.0,
                    child: Image.asset(
                      "assets/login_white.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    "မြန်မာရုပ်ရှင်၊ ဗီဒီယိုနှင့်ကိုရီးယားဇာတ်လမ်းတွဲများကို စိတ်ကြိုက်ကြည့်ရှုနိုင်ပါသည််။",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Color(0xffd83da3)),
                  ),
                  SizedBox(height: 15.0),
                  Text("တစ်ရက် ၉၉ကျပ်",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16)),
                  SizedBox(
                    height: 20.0,
                  ),
                  phoneField,
                  SizedBox(
                    height: 15.0,
                  ),
                  loginButton,
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(top: 16.0),
         child:  RulesAndQuestionBottomBar()),
    );
  }
}
