import 'package:flutter/material.dart';
import 'package:schoolapp/main.dart';
import 'package:schoolapp/page/AnnouncementsPage.dart';
import 'package:schoolapp/page/ClubsPage.dart';
import 'package:schoolapp/page/SettingsPage.dart';
import 'package:schoolapp/page/SchoolPage.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({ Key? key }) : super(key: key);

  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  int _selectedIndex = 0;
  PageController _pageController = PageController();
  List<Widget> _screens = [
    MainPage(),
    AnnouncementsPage(),
    ClubsPage(),
    SchoolPage(),
    SettingsPage(),
  ];
  void _onPageChanged(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedindex) {
    _pageController.jumpToPage(_selectedIndex);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
      iconSize: 25,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
        backgroundColor: Colors.black
        ),
        BottomNavigationBarItem(
        icon: Icon(Icons.speaker_notes),
        label: 'Inbox',
        backgroundColor: Colors.black
        ),
        BottomNavigationBarItem(
        icon: Icon(Icons.people),
        label: 'Clubs',
        backgroundColor: Colors.black
        ),
        BottomNavigationBarItem(
        icon: Icon(Icons.school),
        label: 'School',
        backgroundColor: Colors.black
        ),
        BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'Settings',
        backgroundColor: Colors.black
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue,
      onTap: _onItemTapped,
      unselectedIconTheme: IconThemeData(
      color: Colors.white
      ),
      showUnselectedLabels: false,
      )
    );
  }
}


// class _AppBarWidgetState extends State<AppBarWidget> {
//   int currentIndex = 0;
  
//   @override
//   Widget build(BuildContext context) {
//     return BottomAppBar(
//     color: Colors.blue,
//     elevation: 0.0,
//       child: SafeArea(
//         bottom: false,
//         child: IconTheme(
//           data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               IconButton(
//               tooltip: 'opens home page',
//               icon: const Icon(Icons.home),
//               iconSize: 40,
//               onPressed: () => selecteditem(context, 0),
//               ),
//               IconButton(
//               tooltip: 'opens announcements page',
//               icon: const Icon(Icons.speaker),
//               iconSize: 40,
//               onPressed: () => selecteditem(context, 1),
//               ),
//               IconButton(
//               tooltip: 'opens clubs page',
//               icon: const Icon(Icons.people),
//               iconSize: 40,
//               onPressed: () => selecteditem(context, 2),
//               ),
//               IconButton(
//               tooltip: 'opens school page',
//               icon: const Icon(Icons.mail,),
//               iconSize: 40,
//               onPressed: () => selecteditem(context, 3),
//               ),
//               IconButton(
//               tooltip: 'opens settings page',
//               icon: const Icon(Icons.settings),
//               iconSize: 40,
//               onPressed: () => selecteditem(context, 4),
//               ),
//             ]
//           )
//         )
//       )
//     );
//   }
//   void selecteditem(BuildContext context, int index) {
//     Navigator.of(context).pop();
//     switch (index) {
//       case 0:
//         Navigator.of(context).push(MaterialPageRoute(
//           builder: (context) => MainPage(),

//         ));
//         break;
//       case 1:
//         Navigator.of(context).push(MaterialPageRoute(
//           builder: (context) => AnnouncementsPage(),
//         ));
//         break;
//       case 2:
//         Navigator.of(context).push(MaterialPageRoute(
//           builder: (context) => ClubsPage(),
//         ));
//         break;
//       case 3:
//         Navigator.of(context).push(MaterialPageRoute(
//           builder: (context) => SchoolPage(),
//         ));
//         break;
//       case 4:
//         Navigator.of(context).push(MaterialPageRoute(
//           builder: (context) => SettingsPage(),
//         ));
//         break;
//     }
//   }
// }

