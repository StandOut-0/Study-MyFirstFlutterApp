import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/base/res/style/appStyle.dart';
import 'appMedia.dart';

class Logo extends StatelessWidget {
  MainAxisAlignment logoAlign;
  double logoWidth;
  String logoTxt;
  double logoTxt_fontSize;
  String logoColor;

  Logo(
      {super.key,
      this.logoAlign = MainAxisAlignment.start,
      this.logoTxt = 'standout',
      this.logoWidth = 30,
      this.logoTxt_fontSize = 24,
      this.logoColor = "main"});

  @override
  Widget build(BuildContext context) {
    switch (logoColor) {
      case "main":
        logoColor = AppMdedia.logo_main;
      case "white":
        logoColor = AppMdedia.logo_white;
    }

    return Row(
      mainAxisAlignment: logoAlign,
      children: [
        Image.asset(
          logoColor,
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
