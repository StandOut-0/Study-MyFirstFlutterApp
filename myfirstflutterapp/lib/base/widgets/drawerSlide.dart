import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:myfirstflutterapp/base/res/media/logo.dart';
import 'package:myfirstflutterapp/base/res/style/appStyle.dart';

class DrawerSlide extends StatelessWidget {
  const DrawerSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.all(0),
      children: <Widget>[
        DrawerHeader(
            decoration: BoxDecoration(
              color: AppStyles.bgColor,
            ),
            child: Logo(logoAlign: MainAxisAlignment.start)),
        ListTile(
          title: Text("First"),
          onTap: () => Navigator.pushNamed(context, '/first'),
        ),
        ListTile(
          title: Text("Second"),
          onTap: () => Navigator.pop(context),
        ),
        ListTile(
          title: Text("Third"),
          onTap: () => Navigator.pop(context),
        ),
        Padding(
          padding: EdgeInsets.all(AppStyles.padding_sm),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    print("TextButton clicked");
                  },
                  child: Text("SecondLink")),
              TextButton(
                  onPressed: () {
                    print("TextButton clicked");
                  },
                  child: Text("ThirdLink")),
              TextButton(
                  onPressed: () {
                    print("TextButton clicked");
                    Fluttertoast.showToast(
                      msg: "고객센터: 02-0000-0000",
                      toastLength: Toast.LENGTH_LONG,
                    );
                  },
                  child: Text("고객센터")),
            ],
          ),
        )
      ],
    ));
  }
}
