import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/page/HomePage/HomePage.dart';
import 'package:schoolapp/page/InboxPage/announcementStoring.dart';

class HomeAnnonucements extends StatelessWidget {
  const HomeAnnonucements({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
      child: Container(
        width: 1000,
        height: 300,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: kTextColor),
          borderRadius: const BorderRadius.all(Radius.circular(32)),
          color: kTextColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            )]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
              child: Text(
                'Announcements:',
                style: TextStyle(
                  fontSize: 26,
                  color: kBackgroundColor,
                ),
              ),
            ),
           Padding(
             padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
             child: Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  child: Text(
                    displayAnnounce[0].announcement,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 19.0,
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