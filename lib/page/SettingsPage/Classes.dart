import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:schoolapp/constants.dart';

class Classes extends StatelessWidget {
  const Classes({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(kDefaultPadding, 0, kDefaultPadding, kAnnouncementPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Classes',
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
          ),
          Container(
            width: 1500,
            height: 100,
            margin: EdgeInsets.fromLTRB(0, kAnnouncementPadding, 0, kAnnouncementPadding),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.transparent),
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              color: kPurpleColor,
              boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 7),
                  child: Text(
                    'Week 1',
                    style: TextStyle(
                      fontSize: 20, 
                      color: kBackgroundColor,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 160,
                      height: 35,
                      margin: EdgeInsets.fromLTRB(13, 0, 10, 0),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.transparent),
                        borderRadius: const BorderRadius.all(Radius.circular(25)),
                        color: kBackgroundColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ]
                      ),
                    ),
                    Container(
                      width: 160,
                      height: 35,
                      margin: EdgeInsets.fromLTRB(10, 0, 13, 0),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.transparent),
                        borderRadius: const BorderRadius.all(Radius.circular(25)),
                        color: kBackgroundColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ]
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(45, 3, 50, 0),
                      child: Text(
                        'Morning Class',
                        style: TextStyle(
                          fontSize: 14,
                          color: kBackgroundColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 3, 40, 0),
                      child: Text(
                        'Afternoon Class',
                        style: TextStyle(
                          fontSize: 14,
                          color: kBackgroundColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 1500,
            height: 100,
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.transparent),
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              color: kPurpleColor,
              boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 7),
                  child: Text(
                    'Week 2',
                    style: TextStyle(
                      fontSize: 20, 
                      color: kBackgroundColor,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 160,
                      height: 35,
                      margin: EdgeInsets.fromLTRB(13, 0, 10, 0),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.transparent),
                        borderRadius: const BorderRadius.all(Radius.circular(25)),
                        color: kBackgroundColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ]
                      ),
                    ),
                    Container(
                      width: 160,
                      height: 35,
                      margin: EdgeInsets.fromLTRB(10, 0, 13, 0),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.transparent),
                        borderRadius: const BorderRadius.all(Radius.circular(25)),
                        color: kBackgroundColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ]
                      ), 
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(45, 3, 50, 0),
                      child: Text(
                        'Morning Class',
                        style: TextStyle(
                          fontSize: 14,
                          color: kBackgroundColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 3, 40, 0),
                      child: Text(
                        'Afternoon Class',
                        style: TextStyle(
                          fontSize: 14,
                          color: kBackgroundColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
        padding: EdgeInsets.fromLTRB(0, 35, 0, 0),
        child: Text(
          'Preferences & More',
          style: TextStyle(
            fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold
          )
        )
        ),
        ],
      ),
    );
  }
}