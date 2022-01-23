import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';

class Other extends StatelessWidget {
  const Other({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Padding(
                padding: EdgeInsets.fromLTRB(5, 20, 0, 12),
                child: Text(
                    'Other',
                    style: TextStyle(
                      fontSize: 25,
                      color: kTextColor
                    ),
                  ),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Container(
                width: 1000,
                height: 170,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: kTextColor),
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
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
                  children: <Widget>[
                    Row(
                      children: <Widget> [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 8, 0, 0),
                          child: Icon(
                            Icons.business_rounded,
                            color: kBackgroundColor,
                            size: 30,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 8, 0, 0),
                          child: Text(
                            'YRDSB Website',
                            style: TextStyle(
                              fontSize: 20,
                              color: kBackgroundColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(129, 8, 0, 0),
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
                    Row(
                      children: <Widget> [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 8, 0, 0),
                          child: Icon(
                            Icons.link,
                            color: kBackgroundColor,
                            size: 30,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 8, 0, 0),
                          child: Text(
                            'MMHS Website',
                            style: TextStyle(
                              fontSize: 20,
                              color: kBackgroundColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(134, 8, 0, 0),
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
                    Row(
                      children: <Widget> [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 8, 0, 0),
                          child: Icon(
                            Icons.privacy_tip_outlined,
                            color: kBackgroundColor,
                            size: 30,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 8, 0, 0),
                          child: Text(
                            'REPORT IT',
                            style: TextStyle(
                              fontSize: 20,
                              color: kBackgroundColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(175, 8, 0, 0),
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
                  ],
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}