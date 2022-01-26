import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';
 
class DarkMode extends StatefulWidget {
  const DarkMode({ Key? key }) : super(key: key);

  @override
  _DarkModeState createState() => _DarkModeState();
}

class _DarkModeState extends State<DarkMode> {
  bool theme = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(kDefaultPadding, kAnnouncementPadding, kDefaultPadding, 0),
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 3, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 65,
                      child: TextButton(
                        onPressed: null,
                        child: Row(
                          children: <Widget> [
                            Padding(
                              padding: EdgeInsets.fromLTRB(13, 0, 0, 0),
                              child: Text(
                                'Theme',
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
                              flex:1,
                              child: Transform.scale(
                                scale: 1,
                                child: Switch.adaptive(
                                  value: theme,
                                  onChanged: (bool newValue) {
                                    setState(() {
                                      theme = newValue;
                                    });
                                  },
                                  activeTrackColor: kBackgroundColor,
                                  inactiveTrackColor: kGreyColor,
                                ),
                             ),
                          )]
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]
        ),
      )
    );
  }
}
