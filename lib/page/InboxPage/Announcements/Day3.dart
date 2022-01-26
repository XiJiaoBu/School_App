import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/page/HomePage/HomePage.dart';
import 'package:schoolapp/page/InboxPage/InboxPage.dart';
import 'package:schoolapp/page/InboxPage/announcementStoring.dart';

class Day3 extends StatelessWidget {
  const Day3({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 368,
      margin: EdgeInsets.fromLTRB(0, kAnnouncementPadding, 0, 0),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.transparent),
        borderRadius: const BorderRadius.all(Radius.circular(18)),
        color: kRedColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 1), // changes position of shadow
        )]
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 65,
            child: TextButton(
              onPressed: () { _toDay3(context);
              },
              child: Row(
                children: <Widget> [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(13, 0, 0, 0),
                    child: SizedBox(
                      width: 289,
                      child: Text(
                        displayAnnounce[2].displayDate,
                        style: TextStyle(
                          fontSize: 20,
                          color: kBackgroundColor,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: RotatedBox(
                      quarterTurns: 2,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: kBackgroundColor
                        ),
                        onPressed: null,
                      ),
                    ),
                  ),
                ]
              ),
            ),
          ),
        ],
      ),
    );
  }
  void _toDay3(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Day3Page()));
  }
}


class Day3Page extends StatelessWidget {
  const Day3Page({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kRedColor,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            child: Container(
              width: 428,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: kBackgroundColor,
                            size: 25,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          }
                        ),
                    ),
                    Center(
                      child: Text(
                        displayAnnounce[2].displayDate,
                        style: TextStyle(
                          fontSize: 30,
                          color: kBackgroundColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: 1000,
                      height: 1000,
                      margin: EdgeInsets.fromLTRB(0, 45, 0, 0),
                      decoration: BoxDecoration(
                      border:
                          Border.all(width: 1, color: Colors.transparent),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(32)),
                      color: kBackgroundColor,
                      boxShadow: [
                        BoxShadow(
                          color: kBlendColor,
                          spreadRadius: 40,
                          blurRadius: 100,
                          offset:
                              Offset(0, 30), // changes position of shadow
                        )
                      ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(kDefaultPadding),
                                  child: Text(
                                    displayAnnounce[2].announcement,
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ]
                      )
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
