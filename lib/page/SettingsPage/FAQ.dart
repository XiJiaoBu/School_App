import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';

class FAQ extends StatelessWidget {
  const FAQ({ Key? key }) : super(key: key);

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
                            onPressed: () { _toFAQ(context);
                            },
                            child: Row(
                              children: <Widget> [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(13, 0, 0, 0),
                                  child: Text(
                                    'FAQ',
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
  void _toFAQ(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => FAQPage()));
  }
}

class FAQPage extends StatelessWidget {
  const FAQPage({ Key? key }) : super(key: key);

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
                          'Frequently Asked Questions',
                          style: TextStyle(
                            fontSize: 24,
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
                                  padding: const EdgeInsets.all(kDefaultPadding),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                                        child: Text(
                                          'Will any of my data be stored?',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'This app does not store any personal data or information aside from your local preferences.',
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(0, kDefaultPadding, 0, 5),
                                        child: Text(
                                          'I have questions and need help!',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'For any questions or concerns, you can contact Larry through his gapps email (348553710@gapps.yrdsb.ca) or feel free to send him a message at @_larry.h.',
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(0, kDefaultPadding, 0, 5),
                                        child: Text(
                                          'I would like to be involved in this project, how can I join?',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Join the Milliken App Dev Club! We host weekly meetings and you can join by filling out the application form in feedback or reaching out to Larry.',
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(0, kDefaultPadding, 0, 5),
                                        child: Text(
                                          'I have an idea for a new feature!',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Awesome! I’d love to hear it, you can find the tech form in the feedback section to tell me all about it :)',
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(0, kDefaultPadding, 0, 5),
                                        child: Text(
                                          'Ive found a bug!',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Screenshot/record the issue and submit it through the techform found in the feedback section. Ill have it fixed as soon as possible.',
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(0, kDefaultPadding, 0, 5),
                                        child: Text(
                                          'Is my phone supported?',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'The target software for this app is iOS10.0. Any versions before iOS10.0 may experience lag or incompatibility issues. ',
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(0, kDefaultPadding, 0, 0),
                                        child: Text(
                                          'For android devices, the targeted version is Android 11. You may see performance issues if you are on an older device. ',
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ],
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
