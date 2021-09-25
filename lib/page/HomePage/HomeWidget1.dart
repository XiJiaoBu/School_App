import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';
import 'package:schoolapp/page/HomePage/HomePage.dart';

class HomeWidget1 extends StatelessWidget {
  const HomeWidget1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 30, 20, 0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: kTextColor),
                borderRadius: const BorderRadius.all(Radius.circular(32)),
                color: kTextColor
              ),
              width: 170,
              height: 170,
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
                        'Place',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 20,
                        )
                      ),
                      Text(
                        'Holder',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 20,
                        )
                      )
                    ]
                  ),
                )
              ],
            )
          ),
        ),
        Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: kTextColor),
                borderRadius: const BorderRadius.all(Radius.circular(32)),
                color: kTextColor
              ),
              width: 170,
              height: 170,
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
                        'Place',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 20,
                        )
                      ),
                      Text(
                        'Holder',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 20,
                        )
                      )
                    ]
                  ),
                )
              ],
            )
          ),
        ),
      ],
    );
  }
}
