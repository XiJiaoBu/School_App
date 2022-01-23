import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';

class Notifications extends StatelessWidget {
  const Notifications({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Container(
                width: 1000,
                height: 66,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: kTextColor),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
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
                          padding: EdgeInsets.fromLTRB(20, 12, 0, 0),
                          child: Icon(
                            Icons.notifications_active_outlined,
                            color: kBackgroundColor,
                            size: 30,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 8, 0, 0),
                          child: Text(
                            'Notification Settings',
                            style: TextStyle(
                              fontSize: 20,
                              color: kBackgroundColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(85, 8, 0, 0),
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
            Padding(padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
              child: Container(
                width: 1000,
                height: 66,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: kTextColor),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
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
                            Icons.phone_in_talk_sharp,
                            color: kBackgroundColor,
                            size: 30,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 8, 0, 0),
                          child: Text(
                            'Feedback',
                            style: TextStyle(
                              fontSize: 20,
                              color: kBackgroundColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(186, 8, 0, 0),
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
            Padding(padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
              child: Container(
                width: 1000,
                height: 66,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: kTextColor),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
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
                            Icons.question_answer_outlined,
                            color: kBackgroundColor,
                            size: 30,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 8, 0, 0),
                          child: Text(
                            'FAQ',
                            style: TextStyle(
                              fontSize: 20,
                              color: kBackgroundColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(239, 8, 0, 0),
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
            Padding(padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
              child: Container(
                width: 1000,
                height: 66,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: kTextColor),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
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
                            Icons.check_circle_outline,
                            color: kBackgroundColor,
                            size: 30,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 8, 0, 0),
                          child: Text(
                            'Perferences',
                            style: TextStyle(
                              fontSize: 20,
                              color: kBackgroundColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(165, 8, 0, 0),
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
