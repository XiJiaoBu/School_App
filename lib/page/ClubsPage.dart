import 'package:flutter/material.dart';
import 'package:schoolapp/widget/NavigationDrawer.dart';
import 'package:schoolapp/widget/AppBar.dart';

class ClubsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('Clubs'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        bottomNavigationBar: AppBarWidget()
      );
}
