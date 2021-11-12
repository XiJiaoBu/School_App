import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/page/HomePage/HomePage.dart';
import 'package:schoolapp/page/InboxPage/InboxPage.dart';
import 'package:schoolapp/page/InboxPage/announcementStoring.dart';

class Announcements1 extends StatelessWidget {
  const Announcements1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: Column(
        children: [
          Container(
            width: 1000,
            height: 250,
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
        ],
      )
    );
  }
}



class Announcements2 extends StatelessWidget {
  const Announcements2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Column(
        children: [
          Container(
            width: 1000,
            height: 250,
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
                        displayAnnounce[1].announcement,
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
        ],
      )
    );
  }
}


class Announcements3 extends StatelessWidget {
  const Announcements3({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Column(
        children: [
          Container(
            width: 1000,
            height: 250,
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
                        displayAnnounce[2].announcement,
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
        ],
      )
    );
  }
}


class Announcements4 extends StatelessWidget {
  const Announcements4({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Column(
        children: [
          Container(
            width: 1000,
            height: 250,
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
                        displayAnnounce[3].announcement,
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
        ],
      )
    );
  }
}


class Announcements5 extends StatelessWidget {
  const Announcements5({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Column(
        children: [
          Container(
            width: 1000,
            height: 250,
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
                        displayAnnounce[4].announcement,
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
        ],
      )
    );
  }
}


class Announcements6 extends StatelessWidget {
  const Announcements6({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Column(
        children: [
          Container(
            width: 1000,
            height: 250,
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
                        displayAnnounce[5].announcement,
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
        ],
      )
    );
  }
}


class Announcements7 extends StatelessWidget {
  const Announcements7({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Column(
        children: [
          Container(
            width: 1000,
            height: 250,
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
                        displayAnnounce[6].announcement,
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
        ],
      )
    );
  }
}
