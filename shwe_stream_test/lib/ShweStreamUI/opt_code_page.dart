import 'package:flutter/material.dart';
import 'package:shwe_stream_test/ShweStreamUI/custom_rounded_shape_button.dart';
import 'package:shwe_stream_test/ShweStreamUI/home_page.dart';
import 'package:shwe_stream_test/ShweStreamUI/package_get_service.dart';
import 'package:shwe_stream_test/ShweStreamUI/rule%20_question_bottom_app_bar.dart';

class OPTCodePage extends StatefulWidget {
  OPTCodePage({Key key}) : super(key: key);

  @override
  _OPTCodePageState createState() => _OPTCodePageState();
}

class _OPTCodePageState extends State<OPTCodePage> {
  TextStyle optCodePageStyle =
  TextStyle(fontFamily: 'Montserrat', fontSize: 15.0);

  @override
  Widget build(BuildContext context) {
    final optField = TextField(
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      obscureText: false,
      style: optCodePageStyle,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(10, 8, 8, 8),
        hintText: "ကုဒ်နံပါတ်ထည့်ရန်",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
      ),
    );

    final confirmButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),

      color: Color(0xffe64a8b),
      child: MaterialButton(
        minWidth: MediaQuery
            .of(context)
            .size
            .width,
        padding: EdgeInsets.all(8.0),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()));
        },
        child: Text(
          "အတည်ပြုမည်",
          textAlign: TextAlign.center,
          style: optCodePageStyle.copyWith(
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    height: 250.0,
                    child: Image.asset(
                      "assets/login_white.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: 35.0,
                  ),
                  optField,
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    height: 50,
                    child: CustomRoundedShapeButton(
                        btnText: "အတည်ပြုမည်", navigatePage: "/homepage"),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    alignment: Alignment.centerRight,
                    child: Text(
                      "ကုဒ်ပြန်ယူရန် ( 2:30) မိနစ်",
                      style: TextStyle(fontSize: 15, color: Color(0xffe64a8b)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: RulesAndQuestionBottomBar(),
    );
  }
}
