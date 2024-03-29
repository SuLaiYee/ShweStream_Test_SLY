import 'package:flutter/material.dart';
import 'package:shwe_stream_test/ShweStreamUI/adv_promotion_detail_page.dart';

class ADPromotion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      child: FlatButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AdvPromotionDetail(title: "To Get Gold Coins",)));
        },
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Color(0xffe9b60c), Color(0xff92781e)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              //borderRadius: BorderRadius.circular(30.0)
          ),
          child: Container(
            //constraints: BoxConstraints(maxWidth: 800.0, minHeight: 50.0),
            alignment: Alignment.center,
            child: Text(
              "ရွှေဒင်္ဂါးများကံထူးခွင့် ၃၁.၃.၂၀၂၀ အထိ",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      )
    );
  }
}
