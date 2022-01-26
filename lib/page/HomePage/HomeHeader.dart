import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/page/HomePage/HomePage.dart';
import 'package:intl/intl.dart';


var time = DateTime.now();
int get_Hour(){
return time.hour;
}
int get_minutes(){
  return time.minute;
}
int minute = get_minutes();
int hour = get_Hour();


class HomeHeader extends StatelessWidget {
  const HomeHeader({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(kDefaultPadding, 15, 0, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
              child: Row(
                children: <Widget> [
                  Text((() {
                      if({5,6,7,8,9,10,11}.contains(hour)){{
                        return "Good morning,";}
                    } else if ({12,13,14,15,16,17}.contains(hour)){{
                        return "Good afternoon,";}
                    } else if ({18,19,20,21,22,23}.contains(hour)){{
                        return "Good evening,";}
                    }  else {{
                        return "Sleep well :)";}
                    }})(),
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    )),
              ])
            ),
            Text(
              'Welcome to the Milliken app.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20
              ),
            )
          ]
        )
    );
  }
}