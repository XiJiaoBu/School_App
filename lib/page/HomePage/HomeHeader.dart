import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/page/HomePage/HomePage.dart';


class HomeHeader extends StatelessWidget {
  const HomeHeader({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 15, 0, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
              child: Row(
                children: <Widget> [
                  Text(
                  'Good Morning!',
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 30
                  ),
                ),
              ])
            ),
            Text(
              'Welcome to the Milliken app.',
              style: TextStyle(
                color: kTextColor,
                fontSize: 20
              ),
            )
          ]
        )
    );
  }
}
