import 'package:flutter/material.dart';
import 'package:helloworld/main.dart';
import 'package:helloworld/page/AnnouncementsPage.dart';
import 'package:helloworld/page/ClubsPage.dart';
import 'package:helloworld/page/ContactPage.dart';
import 'package:helloworld/page/SettingsPage.dart';
import 'package:helloworld/page/SchoolPage.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Material(
            color: Color.fromRGBO(50, 75, 205, 1),
            child: ListView(
              padding: padding,
              children: <Widget>[
                const SizedBox(height: 50),
                buildMenuItem(
                  text: 'Home',
                  icon: Icons.home_sharp,
                  onclicked: () => selecteditem(context, 0),
                ),
                const SizedBox(height: 16),
                buildMenuItem(
                  text: 'Announcements',
                  icon: Icons.mail_outline,
                  onclicked: () => selecteditem(context, 1),
                ),
                const SizedBox(height: 16),
                buildMenuItem(
                  text: 'SAC',
                  icon: Icons.people,
                  onclicked: () => selecteditem(context, 2),
                ),
                const SizedBox(height: 16),
                buildMenuItem(
                  text: 'School Resources',
                  icon: Icons.picture_as_pdf_rounded,
                  onclicked: () => selecteditem(context, 3),
                ),
                const SizedBox(height: 24),
                Divider(color: Colors.white70),
                const SizedBox(height: 16),
                buildMenuItem(
                  text: 'Contact',
                  icon: Icons.phone,
                  onclicked: () => selecteditem(context, 4),
                ),
                const SizedBox(height: 16),
                buildMenuItem(
                  text: 'Settings',
                  icon: Icons.settings,
                  onclicked: () => selecteditem(context, 5),
                )
              ],
            )));
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onclicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onclicked,
    );
  }

  void selecteditem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MainPage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AnnouncementsPage(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ClubsPage(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => SchoolPage(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ContactPage(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => SettingsPage(),
        ));
        break;
    }
  }
}
