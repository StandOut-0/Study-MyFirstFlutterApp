import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/base/res/style/appStyle.dart';

class Footer extends StatelessWidget {
  Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("Footer", style: AppStyles.title);
  }
}
