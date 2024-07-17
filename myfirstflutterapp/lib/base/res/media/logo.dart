import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/base/res/style/appStyle.dart';
import 'appMedia.dart';

class Logo extends StatelessWidget {
  MainAxisAlignment logoAlign;
  double logoWidth;
  String logoTxt;
  double logoTxt_fontSize;

  Logo(
      {super.key,
      this.logoAlign = MainAxisAlignment.start,
      this.logoTxt = 'standout',
      this.logoWidth = 30,
      this.logoTxt_fontSize = 24});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: logoAlign,
      children: [
        Image.asset(
          AppMdedia.logo,
          width: logoWidth,
        ),
        Text(
          logoTxt,
          style:
              TextStyle(color: AppStyles.txtColor, fontSize: logoTxt_fontSize),
        ),
      ],
    );
  }
}
