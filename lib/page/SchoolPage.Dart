import 'package:flutter/material.dart';
import 'package:helloworld/widget/NavigationDrawer.dart';

class SchoolPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('School Resources'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
      );
}
