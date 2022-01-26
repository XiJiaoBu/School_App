import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:schoolapp/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  const Contact({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(
                  kDefaultPadding, 30, 0, 0),
              child: Text(
                'Contact',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(
              kDefaultPadding,
              16,
              kDefaultPadding,
              0),
          child: Container(
            width: 1000,
            height: 66,
            decoration: BoxDecoration(
              border: Border.all(
                  width: 1,
                  color: Colors.transparent),
              borderRadius: const BorderRadius.all(
                  Radius.circular(18)),
              color: kRedColor,
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 55,
                  child: TextButton(
                    onPressed: _launchIG,
                    child: Row(children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            5, 8, 0, 0),
                        child: Text(
                          '@milliken_sac',
                          style: TextStyle(
                            fontSize: 20,
                            color: kBackgroundColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            157, 44, 0, 0),
                        child: RotatedBox(
                          quarterTurns: 2,
                          child: IconButton(
                            icon: Icon(
                                Icons
                                    .arrow_back_ios_new_rounded,
                                color:
                                    kBackgroundColor),
                            onPressed: null,
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 175,
              height: 155,
              margin: EdgeInsets.fromLTRB(
                  kDefaultPadding, 16, 0, 0),
              decoration: BoxDecoration(
                border: Border.all(
                    width: 1,
                    color: Colors.transparent),
                borderRadius: const BorderRadius.all(
                    Radius.circular(18)),
                color: kPurpleColor,
              ),
              child: TextButton(
                onPressed: _launchContact,
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.center,
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.chat,
                      color: kBackgroundColor,
                      size: 70,
                    ),
                    Text(
                      'Teachers',
                      style: TextStyle(
                        fontSize: 20,
                        color: kBackgroundColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 175,
              height: 155,
              margin: EdgeInsets.fromLTRB(
                  16, 16, kDefaultPadding, 0),
              decoration: BoxDecoration(
                border: Border.all(
                    width: 1,
                    color: Colors.transparent),
                borderRadius: const BorderRadius.all(
                    Radius.circular(18)),
                color: kPurpleColor,
              ),
              child: TextButton(
                onPressed: _launchGuidance,
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.center,
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.chat,
                      color: kBackgroundColor,
                      size: 70,
                    ),
                    Text(
                      'Guidance',
                      style: TextStyle(
                        fontSize: 20,
                        color: kBackgroundColor,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
    ]);
  }
}

_launchGuidance() async {
  const url = 'https://ta.yrdsb.ca';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchIG() async {
  const url = 'https://www.instagram.com/milliken_sac/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchContact() async {
  const url = 'http://www.yrdsb.ca/schools/millikenmills.hs/info/Pages/Our-Staff.aspx';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}