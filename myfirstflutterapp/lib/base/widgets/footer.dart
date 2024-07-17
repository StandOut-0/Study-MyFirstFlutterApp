import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/base/res/media/logo.dart';
import 'package:myfirstflutterapp/base/res/style/appStyle.dart';

class Footer extends StatelessWidget {
  Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // AD Banner
          Container(
            width: double.infinity, // 부모너비만큼 fullWidth
            padding: EdgeInsets.all(AppStyles.padding_mid),
            color: AppStyles.mainColor.withOpacity(.6),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Logo(
                    logoColor: "white",
                    logoTxt: "",
                    logoWidth: 25,
                  ),
                  Text("standout이 궁금하다면?",
                      style: AppStyles.title_sub.copyWith(color: Colors.white)),
                  Icon(
                    Icons.keyboard_arrow_right_rounded,
                    color: Colors.white,
                    size: 25,
                  )
                ],
              ),
            ),
          ),
          Text("Banner"),
          Text("InfoBox(smallTxt + Accordian + HR)"),
          Text("linkBox + copyright"),
        ],
      ),
    );
  }
}
