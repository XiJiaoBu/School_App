import 'package:flutter/material.dart';
import 'package:schoolapp/widget/NavigationDrawer.dart';
import 'package:schoolapp/widget/AppBar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('Home'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
      );
}
