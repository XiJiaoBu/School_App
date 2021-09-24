import 'package:flutter/material.dart';
import 'package:schoolapp/widget/NavigationDrawer.dart';
import 'package:schoolapp/widget/AppBar.dart';

class AnnouncementsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('Announcements'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        bottomNavigationBar: Nav()
      );
}
