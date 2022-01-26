import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class FeedBack extends StatelessWidget {
  const FeedBack({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(kDefaultPadding, kAnnouncementPadding, kDefaultPadding, 0),
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Container(
                    width: 1000,
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
                            onPressed: () { _toFeedback(context);
                            },
                            child: Row(
                              children: <Widget> [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(13, 0, 0, 0),
                                  child: Text(
                                    'Feedback',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: kBackgroundColor,
                                    ),
                                  ),
                                ),
                                Expanded(
                              flex: 1,
                              child: Container(

                              )
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                              )
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                              )
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                              )
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                              )
                            ),
                                Expanded(
                                  flex: 1,
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
                  ),
                ),
              ]),
      ),
    );
  }
      void _toFeedback(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => FeedbackPage()));
  }
}

class FeedbackPage extends StatelessWidget {
  const FeedbackPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kResourcesColor,
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
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Text(
                          'Feedback',
                          style: TextStyle(
                            fontSize: 30,
                            color: kBackgroundColor,
                            fontWeight: FontWeight.bold,
                          ),
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
                                  padding: EdgeInsets.fromLTRB(kDefaultPadding, kDefaultPadding, kDefaultPadding, 0),
                                  child: Container(
                                    width: 1000,
                                    height: 66,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 1, color: Colors.transparent),
                                      borderRadius: const BorderRadius.all(Radius.circular(18)),
                                      color: kRedColor,
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        SizedBox(
                                          height: 55,
                                          child: TextButton(
                                            onPressed: _launchTech,
                                            child: Row(
                                              children: <Widget> [
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(10, 8, 0, 0),
                                                  child: Text(
                                                    'Tech Form',
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      color: kBackgroundColor,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(190, 44, 0, 0),
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
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    'Bugs, tech support, and feature requests.',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(kDefaultPadding, 16, kDefaultPadding, 0),
                                  child: Container(
                                    width: 1000,
                                    height: 66,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 1, color: Colors.transparent),
                                      borderRadius: const BorderRadius.all(Radius.circular(18)),
                                      color: kRedColor,
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        SizedBox(
                                          height: 55,
                                          child: TextButton(
                                            onPressed: _launchSong,
                                            child: Row(
                                              children: <Widget> [
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(5, 8, 0, 0),
                                                  child: Text(
                                                    'Song Suggestions',
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      color: kBackgroundColor,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(120, 44, 0, 0),
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
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    'Submit song suggestions.',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(kDefaultPadding, 16, kDefaultPadding, 0),
                                  child: Container(
                                    width: 1000,
                                    height: 66,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 1, color: Colors.transparent),
                                      borderRadius: const BorderRadius.all(Radius.circular(18)),
                                      color: kRedColor,
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        SizedBox(
                                          height: 55,
                                          child: TextButton(
                                            onPressed: _launchSAC,
                                            child: Row(
                                              children: <Widget> [
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(5, 8, 0, 0),
                                                  child: Text(
                                                    'SAC Contact',
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      color: kBackgroundColor,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(172, 44, 0, 0),
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
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    'Speak to SAC through a google form.',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
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

_launchTech() async {
  const url = 'https://forms.gle/pruJcQgB53fUvSVa8';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchSong() async {
  const url = 'https://forms.gle/SghNx4RrPR58cszU7';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchSAC() async {
  const url = 'https://forms.gle/gCeed8jC4qpuz8wH8';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}