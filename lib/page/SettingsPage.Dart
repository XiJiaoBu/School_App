import 'package:flutter/material.dart';
import 'package:schoolapp/widget/NavigationDrawer.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:schoolapp/widget/AppBar.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text('Settings'), centerTitle: true, backgroundColor: Colors.black,
      ),
      bottomNavigationBar: Nav()
    );
  }
}

var notifications = Container(
  decoration: BoxDecoration(
    border: Border.all(width: 10,),
    borderRadius: const BorderRadius.all(Radius.circular(8)),
  ),
  margin: const EdgeInsets.all(10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      const Text('poop'),
    ],
  )
);

var colour = Container(
  decoration: BoxDecoration(
    border: Border.all(width: 10, color: Colors.black38),
    borderRadius: const BorderRadius.all(Radius.circular(8)),
  ),
  margin: const EdgeInsets.all(4),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      const Text('poop'),
    ],
  )
);