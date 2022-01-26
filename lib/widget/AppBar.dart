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
      TextStyle(fontSize: 0, fontWeight: FontWeight.bold);
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
      extendBody: true,
      backgroundColor: Colors.transparent,
      bottomNavigationBar: Container(
          margin: EdgeInsets.fromLTRB(kDefaultPadding, 0, kDefaultPadding, 30),
          decoration: BoxDecoration(                                                   
            borderRadius: BorderRadius.only(                                           
             topRight: Radius.circular(25), topLeft: Radius.circular(25), bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),            
             boxShadow: [                                                               
               BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),       
           ],                                                                         
        ),                                                                           
          child: ClipRRect(                                                            
            borderRadius: BorderRadius.only(                                           
            topLeft: Radius.circular(25.0),                                            
            topRight: Radius.circular(25.0),  
            bottomLeft: Radius.circular(25.0), 
            bottomRight: Radius.circular(25.0),                                
            ),                                                                         
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0,),
                child: SizedBox(
                  height: 65,
                  child: BottomNavigationBar(                                                
                  elevation: 0,
                  iconSize: 30,
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: SizedBox(height: 0, child: Icon(Icons.home)),
                      label: 'Home',
                      backgroundColor: kBackgroundColor
                    ),
                    BottomNavigationBarItem(
                      icon: SizedBox(height: 0, child: Icon(Icons.speaker_notes)),
                      label: 'Inbox',
                      backgroundColor: kBackgroundColor
                    ),
                    BottomNavigationBarItem(
                      icon: SizedBox(height: 0, child: Icon(Icons.map_outlined)),
                      label: 'Resources',
                      backgroundColor: kBackgroundColor
                    ),
                    BottomNavigationBarItem(
                      icon: SizedBox(height:0, child: Icon(Icons.settings)),
                      label: 'Settings',
                      backgroundColor: kBackgroundColor
                    ),
                  ],
                  currentIndex: _selectedIndex,
                  selectedItemColor: kRedColor,
                  onTap: _onItemTapped,
                  unselectedIconTheme: IconThemeData(color: kGreyColor),
                  showUnselectedLabels: false,      
                  showSelectedLabels: false,    
                                                                                            
                    ),
                ),
              ),
            ),
          ),
      );                                                                                                                                         
  }
}