import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/page/ClubsPage/School.dart';
import 'package:schoolapp/page/ClubsPage/Contact.dart';
import 'package:schoolapp/page/ClubsPage/Other.dart';
import 'package:schoolapp/constants.dart';

class ClubsPage extends StatelessWidget {
  const ClubsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            child: Container(
              width: 428,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
                child: Column(
                  children: [
                    Text(
                      'Resources',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                        width: 1000,
                        height: 1225,
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SingleChildScrollView(
                                child: Column(
                                  children: [
                                    School(),
                                    Contact(),
                                    Other(),
                                  ],
                                ),
                              )
                            ])),
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
