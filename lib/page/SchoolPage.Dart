import 'package:flutter/material.dart';
import 'package:schoolapp/widget/NavigationDrawer.dart';
import 'package:schoolapp/widget/AppBar.dart';

class SchoolPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('School Resources'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        bottomNavigationBar: AppBarWidget()
      );
}
