import 'package:flutter/material.dart';
import 'package:schoolapp/constants.dart';

class Notifications extends StatefulWidget {
  const Notifications({ Key? key }) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool notifs = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(kDefaultPadding, 0, kDefaultPadding, 0),
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                'Notifications',
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
                              child: Transform.scale(
                                scale: 1,
                                child: Switch.adaptive(
                                  value: notifs,
                                  onChanged: (bool newValue) {
                                    setState(() {
                                      notifs = newValue;
                                    });
                                  },
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



// class Notifs extends StatefulWidget {
//   const Notifs({ Key? key }) : super(key: key);

//   @override
//   _NotifsState createState() => _NotifsState();
// }

// class _NotifsState extends State<Notifs> {
//   bool _notifs = true;
//   @override
//   Widget build(BuildContext context) {
//     return SwitchListTile(
//       value: _notifs,
//       onChanged: (bool value) {
//         setState(() {
//           _notifs= value;
//         });
//       }
//     );
//   }
// }