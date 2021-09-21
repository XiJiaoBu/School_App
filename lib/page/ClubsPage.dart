import 'package:flutter/material.dart';
import 'package:helloworld/widget/NavigationDrawer.dart';

class ClubsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('Clubs'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
      );
}
