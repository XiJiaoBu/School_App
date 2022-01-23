import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/page/HomePage/HomePage.dart';
import 'package:intl/intl.dart';

var time = DateTime.now();
int get_Hour(){
return time.hour;
}
int hour=get_Hour();

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
                  Text((() {
                      if({5, 12}.contains(hour)){{
                        return "Good Morning!";}
                    } else if ({13, 17}.contains(hour)){{
                        return "Good Afternoon!";}
                    } else if ({18, 22}.contains(hour)){{
                        return "Good Evening!";}
                    } else if ({22, 4}.contains(hour)) {}{{
                        return "Sleep Well :)";}
                    }})(),
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: 30
                    )),
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