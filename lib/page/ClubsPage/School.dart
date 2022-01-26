import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class School extends StatelessWidget {
  const School({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(kDefaultPadding, 15, 0, 0),
              child: Text(
                'Education',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                  width: 175,
                  height: 155,
                  margin: EdgeInsets.fromLTRB(kDefaultPadding, 15, 0, 0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.transparent),
                    borderRadius: const BorderRadius.all(Radius.circular(18)),
                    color: kPurpleColor,
                  ),
                  child: TextButton(
                    onPressed: _launchTA,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          color: kBackgroundColor,
                          size: 70,
                        ),
                        Text(
                          'TeachAssist',
                          style: TextStyle(
                            fontSize: 20, 
                            color: kBackgroundColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 15, kDefaultPadding, 0),
                  child: Container(
                    width: 175,
                    height: 155,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.transparent),
                      borderRadius: const BorderRadius.all(Radius.circular(18)),
                      color: kPurpleColor,
                    ),
                    child: TextButton(
                      onPressed: _launchCalendar,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.chat,
                            color: kBackgroundColor,
                            size: 70,
                          ),
                          Text(
                            'YRDSB',
                            style: TextStyle(
                              fontSize: 20, 
                              color: kBackgroundColor,
                            ),
                          ),
                          Text(
                            'Calendar',
                            style: TextStyle(
                              fontSize: 20, 
                              color: kBackgroundColor,
                            ),
                          )],
                      ),
                    ),
                  ),
            )],
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
                    onPressed: _launchSCO,
                    child: Row(
                      children: <Widget> [
                        Padding(
                          padding: EdgeInsets.fromLTRB(5, 8, 0, 0),
                          child: Text(
                            'School Cash Online',
                            style: TextStyle(
                              fontSize: 20,
                              color: kBackgroundColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(107, 44, 0, 0),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 175,
              height: 155,
              margin: EdgeInsets.fromLTRB(kDefaultPadding, 16, 0, 0),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.transparent),
                borderRadius: const BorderRadius.all(Radius.circular(18)),
                color: kPurpleColor,
              ),
              child: TextButton(
                onPressed: _launchClub,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.chat,
                      color: kBackgroundColor,
                      size: 70,
                    ),
                    Text(
                      'Club Guide',
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
              margin: EdgeInsets.fromLTRB(16, 16, kDefaultPadding, 0),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.transparent),
                borderRadius: const BorderRadius.all(Radius.circular(18)),
                color: kPurpleColor,
              ),
              child: TextButton(
                onPressed: _launchPath,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.chat,
                      color: kBackgroundColor,
                      size: 70,
                    ),
                    Text(
                      'myBlueprint',
                      style: TextStyle(
                        fontSize: 20, 
                        color: kBackgroundColor,
                      ),
                    )],
                ),
              ),
            )],
        ),
      ],
    );
  }
}

_launchTA() async {
  const url = 'https://ta.yrdsb.ca';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchCalendar() async {
  const url = 'https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwjhjNGU-J30AhVMHM0KHXQzC2wQFnoECAMQAQ&url=https%3A%2F%2Fwww2.yrdsb.ca%2Fsites%2Fdefault%2Ffiles%2F2021-06%2F2021-22-AllSchools-Calendar_0.pdf&usg=AOvVaw2EcibDz6CiSe51sV7lqGIV';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchSCO() async {
  const url = 'https://schoolcashonline.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchPath() async {
  const url = 'https://mypathwayplanner.yrdsb.ca';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchClub() async {
  const url = 'https://drive.google.com/file/d/1-vGvzzYlbLLs8A4T7I2EZC3D9Sa8bUkY/view?usp=drive_web&authuser=2';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}