import 'package:flutter/material.dart';
import 'package:helloworld/widget/NavigationDrawer.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('Contact'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
      );
}
