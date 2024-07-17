import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/base/res/style/appStyle.dart';

class Nav extends StatelessWidget {
  Nav({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("Nav", style: AppStyles.title);
  }
}
