import 'package:flutter/material.dart';
import 'package:shwe_stream_test/opt_code_page.dart';
import 'package:shwe_stream_test/rule%20_question_bottom_app_bar.dart';

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

    final serviceBtn = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xffb06fa2),
      child: MaterialButton(
        minWidth: 180,
        padding: EdgeInsets.all(8.0),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => OPTCodePage()));
        },
        child: Text(
          "၀န်ဆောင်မှုရယူရန်".toUpperCase(),
          textAlign: TextAlign.center,
          style: packageStyle.copyWith(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );

    return Scaffold(
      body: Center(
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
                  style: TextStyle(fontSize: 15, color: Color(0xffb06fa2)),
                ),
              ),
              //SizedBox(height: 15.0),
              Container(
                width: 150,
                child: Divider(
                  thickness: 3,
                  color: Color(0xffb06fa2),
                ),
              ),
              Text("တစ်ရက် ၉၉ကျပ်",
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 15)),
              Container(
                width: 150,
                child: Divider(
                  thickness: 3,
                  color: Color(0xffb06fa2),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              serviceBtn
            ],
          ),
        ),
      ),
      bottomNavigationBar: RulesAndQuestionBottomBar(),
    );
  }
}
