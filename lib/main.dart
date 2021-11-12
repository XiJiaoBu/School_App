import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:schoolapp/widget/NavigationDrawer.dart';
import 'package:schoolapp/widget/AppBar.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/page/InboxPage/announcementStoring.dart';
// import 'firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:async';
import 'package:intl/intl.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await Firebase.initializeApp();
  await filllist();

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
        ),
        home: MainPage(),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override

  Widget build(BuildContext context) => Container(
    color: kPrimaryColor,
    child: SafeArea(
      child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(MyApp.title),
        centerTitle: true,
        backgroundColor: Colors.transparent
      ),
      bottomNavigationBar: Nav(),
      ),
    )
  );
}

