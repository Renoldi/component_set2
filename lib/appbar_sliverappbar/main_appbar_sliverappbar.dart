import 'package:flutter/material.dart';
import 'package:isolates/appbar_sliverappbar/sample1.dart';
import 'package:isolates/appbar_sliverappbar/sample2.dart';

import '../main.dart';

class MainAppBarSliverAppBar extends StatelessWidget {
  onButtonTap(Widget page, BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (BuildContext context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar & SliverAppBar"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: ListView(
          children: <Widget>[
            MyMenuButton(
              title: "Sample 1 - AppBar",
              actionTap: () {
                onButtonTap(Sample1(), context);
              },
            ),
            MyMenuButton(
              title: "Sample 2 - SliverAppBar",
              actionTap: () {
                onButtonTap(Sample2(), context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
