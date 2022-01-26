import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/page/HomePage/HomePage.dart';
import 'package:schoolapp/page/InboxPage/announcementStoring.dart';

class HomeAnnonucements extends StatelessWidget {
  const HomeAnnonucements({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(kDefaultPadding, 10, kDefaultPadding, 5),
      child: Container(
        width: 1000,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.transparent),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: kBackgroundColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              spreadRadius: 0,
              blurRadius: 10,
              offset: Offset(0, 3), // changes position of shadow
            )]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
              child: Text(
                'Todays Announcements',
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
           Padding(
             padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
             child: Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Text(
                      displayAnnounce[0].announcement,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19.0,
                      ),
                    ),
                  ),
                ),
              ),
          ),
           )]
        )
      ),
    );
  }
}