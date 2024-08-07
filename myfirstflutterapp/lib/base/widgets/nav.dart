import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/base/res/style/appStyle.dart';

class Nav extends StatelessWidget {
  Nav({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 70, 10, 10),
        child: Text("<Nav>", style: AppStyles.title),
      ),
    );
  }
}
