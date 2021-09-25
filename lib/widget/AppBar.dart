import 'package:flutter/material.dart';
import 'package:schoolapp/page/InboxPage/InboxPage.dart';
import 'package:schoolapp/page/ClubsPage/ClubsPage.dart';
import 'package:schoolapp/page/HomePage/HomePage.dart';
import 'package:schoolapp/page/SettingsPage/SettingsPage.dart';
import 'package:schoolapp/constants.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    InboxPage(),
    ClubsPage(),
    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        iconSize: 30,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: kPrimaryColor
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.speaker_notes),
            label: 'Inbox',
            backgroundColor: kPrimaryColor
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Clubs',
            backgroundColor: kPrimaryColor
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: kPrimaryColor
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kTextColor,
        onTap: _onItemTapped,
        unselectedIconTheme: IconThemeData(color: Colors.white),
        showUnselectedLabels: false,
      )
    );
  }
}
