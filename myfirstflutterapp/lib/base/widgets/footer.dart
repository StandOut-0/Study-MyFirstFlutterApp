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
            color: AppStyles.mainColor,
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
                      style: AppStyles.title_sub
                          .copyWith(color: AppStyles.whiteColor)),
                  Icon(
                    Icons.keyboard_arrow_right_rounded,
                    color: AppStyles.whiteColor,
                    size: 25,
                  )
                ],
              ),
            ),
          ),

          // AuthorInfo
          Container(
              width: double.infinity,
              padding: EdgeInsets.all(AppStyles.padding_mid),
              color: AppStyles.darkColor_light,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "standout이 처음으로 만든 Flutter App에 방문하신 것을 진심으로 환영합니다!",
                    style: AppStyles.txt_md,
                  ),

                  // 아코디언
                  Theme(
                    data: Theme.of(context).copyWith(
                        dividerColor: Colors.transparent), // 펼쳐졌을때 border없애기
                    child: ExpansionTile(
                        expandedAlignment: Alignment.topLeft,
                        tilePadding: EdgeInsets.all(0),
                        title: Text(
                          "standout info",
                          style: AppStyles.txt_md,
                        ),
                        childrenPadding: EdgeInsets.all(0),
                        children: [
                          Text(
                            "관리자: 박상희\n전화번호:010-0000-0000\n주소: 행운시 행운구 행운로 777, 행운타워 7 77-77 707호",
                            style: AppStyles.txt_md,
                          )
                        ]),
                  ),
                ],
              )),
          SizedBox(
            height: 30,
          ),
          Text("InfoBox(smallTxt + Accordian + HR)"),
          Text("linkBox + copyright"),
        ],
      ),
    );
  }
}
