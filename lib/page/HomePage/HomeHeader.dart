import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/page/HomePage/HomePage.dart';


class HomeHeader extends StatelessWidget {
  const HomeHeader({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15, 20, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Row(
                children: <Widget> [
                  Text(
                  'Saturday September 25',
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 30
                  ),
                ),
              ])
            ),
            Text(
              'Goodmorning!',
              style: TextStyle(
                color: kTextColor,
                fontSize: 40
              ),
            )
          ]
        )
    );
  }
}
