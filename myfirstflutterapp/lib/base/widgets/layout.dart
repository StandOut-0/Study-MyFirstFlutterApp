import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/base/res/media/logo.dart';
import 'package:myfirstflutterapp/base/widgets/body.dart';
import 'package:myfirstflutterapp/base/widgets/drawerSlide.dart';
import 'package:myfirstflutterapp/base/widgets/footer.dart';
import 'package:myfirstflutterapp/base/widgets/nav.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Transform.translate(
          offset: Offset(20, 0), // X축으로 20 픽셀 이동
          child: Logo(logoAlign: MainAxisAlignment.center),
        ),
      ),
      endDrawer: DrawerSlide(),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Nav(),
        SizedBox(height: 50),
        Body(),
        SizedBox(height: 50),
        Footer(),
      ]),
    );
  }
}
