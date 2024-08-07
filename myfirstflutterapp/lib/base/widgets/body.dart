import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/base/res/style/appStyle.dart';

class Body extends StatelessWidget {
  Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Text("<Body>", style: AppStyles.title)),
      ],
    );
  }
}
