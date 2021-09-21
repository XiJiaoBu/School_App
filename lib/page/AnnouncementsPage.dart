import 'package:flutter/material.dart';
import 'package:helloworld/widget/NavigationDrawer.dart';

class AnnouncementsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('Announcements'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
      );
}
