import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:schoolapp/page/HomePage/HomeBigCalendar.dart';
import 'package:schoolapp/widget/NavigationDrawer.dart';
import 'package:schoolapp/widget/AppBar.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/page/InboxPage/announcementStoring.dart';
import 'package:schoolapp/page/HomePage/HomeHeader.dart';
// import 'firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:async';
import 'package:intl/intl.dart';
import 'package:schoolapp/constants.dart';
import 'page/HomePage/WeatherWidget/models.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await Firebase.initializeApp();
  await filllist();
  print(hour);
  print(minute);
  print(weekday);
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  static final String title = 'Home';
  

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: new ThemeData(
          scaffoldBackgroundColor: kBackgroundColor,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
        ),
        home: 
        SplashScreen(),
        // home: MainPage(),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override

  Widget build(BuildContext context) => Container(
    color: kBackgroundColor,
    child: SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(MyApp.title),
        centerTitle: true,
        backgroundColor: kBackgroundColor,
      ),
      bottomNavigationBar: Nav(),
      ),
    )
  );
}

// SPLASH SCREEN
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.of(context).pushReplacement(_Route()));
  }
  

  Route _Route() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => MainPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset.zero;
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
  );
}
      
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [ 
            Padding(
              padding: const EdgeInsets.fromLTRB(0,430,0,230),
              child: Text(
              'Larry Han',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[600],
              )),
            ),
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(0,10,0,230),
            //   child: Text(
            //   'Designed with Vanessa Chen & Arwen Chen',
            //   style: TextStyle(
            //     fontSize: 15,
            //     color: Colors.grey[600],
            //   )),
            // ),
            Text(
              '2021',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[600],
                ),
            )]
          ),
      )
      );
  }
}