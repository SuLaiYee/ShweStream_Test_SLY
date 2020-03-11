import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  LoginPage({Key key}) : super(key:key);

  @override
  _LoginPageState createState() => _LoginPageState();
 }

 class _LoginPageState extends State<LoginPage>{

  TextStyle loginPageStyle  = TextStyle(fontFamily: 'Montserrat', fontSize: 15.0);

   @override
   Widget build(BuildContext context) {

     /*var _pageSize = MediaQuery.of(context).size.height;
     var _notifySize = MediaQuery.of(context).padding.top;
     var _appBarSize = appBar.preferredSize.height;*/

     final phoneField = TextField(
       keyboardType: TextInputType.number,
       obscureText: false,
       style: loginPageStyle,
       //controller: TextEditingController()..text = '09',
       decoration: InputDecoration(
         contentPadding: EdgeInsets.fromLTRB(20, 16, 16, 16),
         hintText: "Enter Your Phone Number",
         prefixText: "09 -  ",
         //hintStyle: st,
         border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
       ),
     );

     final loginButton = Material(
       elevation: 5.0,
       borderRadius: BorderRadius.circular(30.0),
       color: Color(0xffb06fa2),
       child: MaterialButton(
         minWidth: MediaQuery.of(context).size.width,
         padding: EdgeInsets.all(12.0),
         onPressed: (){
         },
         child: Text("Login".toUpperCase(), textAlign: TextAlign.center, style: loginPageStyle.copyWith(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold, ),),
       ),
     );




     return Scaffold(
       body: Center(
          child:  SingleChildScrollView(
                   //color: Colors.white,
                   child: Center(
                     child: Padding(
                       padding: const EdgeInsets.all(36.0),
                       child: Column(
                         mainAxisSize: MainAxisSize.min,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[
                           SizedBox(
                             height: 130.0,
                             child : Image.asset(
                               "assets/logo.jpg",
                               fit: BoxFit.fill,
                             ),
                           ),
                           SizedBox(height:25.0),
                           Text("မြန်မာရုပ်ရှင်၊ ဗီဒီယိုနှင့်ကိုရီးယားဇာတ်လမ်းတွဲများကို စိတ်ကြိုက်ကြည့်ရှုနိုင်ပါသည််။", textAlign: TextAlign.center,  style: TextStyle(fontSize: 14, color: Color(0xffb06fa2)),),
                           SizedBox(height:15.0),
                           Text("တစ်ရက် ၉၉ကျပ်", textAlign: TextAlign.center,  style: TextStyle(fontSize: 14)),
                           SizedBox(
                             height: 35.0,
                           ),
                           phoneField,
                           SizedBox(
                             height: 15.0,
                           ),
                           loginButton,
                           /*Expanded(
                              child: Text("စည်းကမ်းနှင့် သတ်မှတ်ချက်များ"),
                           ),*/
                         ],
                       ),
                     ),
                   ),
         ),
       )

     );
   }
 }