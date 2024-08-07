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
            padding: EdgeInsets.all(AppStyles.padding_sm),
            color: AppStyles.mainColor,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Center(
                                child: Text(
                                    "#ESTJ  #980314  #Designer  #Developer")),
                            duration: Duration(seconds: 2)));
                      },
                      child: Row(
                        children: [
                          Logo(
                            logoColor: "white",
                            logoTxt: "",
                            logoWidth: 25,
                          ),
                          Text("standout는 어떤사람일까요?",
                              style: AppStyles.title_sub
                                  .copyWith(color: AppStyles.whiteColor)),
                          Icon(
                            Icons.keyboard_arrow_right_rounded,
                            color: AppStyles.whiteColor,
                            size: 25,
                          )
                        ],
                      )),
                ],
              ),
            ),
          ),

          // AuthorInfo
          Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(
                AppStyles.padding_md,
                AppStyles.padding_md,
                AppStyles.padding_md,
                AppStyles.padding_md),
            color: AppStyles.darkColor_light,
            child: Theme(
              data: Theme.of(context).copyWith(
                  dividerColor: Colors.transparent), // 펼쳐졌을때 border없애기
              child: ExpansionTile(
                  expandedAlignment: Alignment.topLeft,
                  childrenPadding:
                      EdgeInsets.only(bottom: AppStyles.padding_md),
                  tilePadding: EdgeInsets.all(0),
                  title: Text(
                    "standout이 처음으로 만든 \nMyFirstFlutterApp에 방문하신 것을 진심으로 환영합니다!",
                    style: AppStyles.txt_md,
                  ),
                  children: [
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(AppStyles.padding_md),
                      color: Colors.white.withOpacity(.3),
                      child: Text(
                        "관리자: 박상희\n전화번호:010-0000-0000\n주소: 행운시 행운구 행운로 777, 행운타워 7 77-77 707호",
                        style: AppStyles.txt_md,
                      ),
                    )
                  ]),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(AppStyles.padding_md),
            child: Column(
              children: [
                Logo(
                  logoWidth: 15,
                  logoTxt_fontSize: 15,
                  logoAlign: MainAxisAlignment.center,
                ),
                Text(
                  "ⓒ standout Limited",
                  style: AppStyles.txt_md.copyWith(color: AppStyles.txtColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
