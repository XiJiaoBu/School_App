import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/page/HomePage/HomePage.dart';

class HomeWidget1 extends StatelessWidget {
  const HomeWidget1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: SizedBox(
                  width: 190,
                  height: 180,
                  child: TextButton(
                    onPressed: null,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.transparent),
                        borderRadius: const BorderRadius.all(Radius.circular(32)),
                        color: kPurpleColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            spreadRadius: 0,
                            blurRadius: 10,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ]
                      ),
                      width: 170,
                      height: 160,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget> [
                            Text(
                                'self',
                                style: TextStyle(
                                  color: kBackgroundColor,
                                  fontSize: 22,
                                )
                              ),
                              Text(
                                'screening',
                                style: TextStyle(
                                  color: kBackgroundColor,
                                  fontSize: 22,
                                )
                              )
                            ]
                          ),
                        )
                      ],
                    )
                  ),
                ),
              ),
            ),

      ],
    );
  }
  }
