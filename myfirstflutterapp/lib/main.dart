import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/base/res/style/appStyle.dart';
import 'package:myfirstflutterapp/base/widgets/layout.dart';

void main() => runApp(MyFirstFlutterApp());

class MyFirstFlutterApp extends StatelessWidget {
  const MyFirstFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "MyFirstFlutterApp",
        debugShowCheckedModeBanner: false, // 배너 false
        theme: ThemeData(
          appBarTheme: AppBarTheme(
              shape: Border(
                  bottom: BorderSide(color: AppStyles.borderColor, width: .5))),
          scaffoldBackgroundColor: AppStyles.bgColor, // Scaffold 기본배경
          fontFamily: 'Pretendard', // Pretendard 폰트 사용
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => Layout(),
        });
  }
}
