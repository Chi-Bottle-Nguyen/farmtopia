import 'package:farmtopia/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF3DB74),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 10.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.0),
                    OptionTile(
                      icon: Icon(Icons.history, color: Colors.grey[600]),
                      text: 'Your Activity',
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    OptionTile(
                      icon: Icon(Icons.person_add_alt_1_outlined,
                          color: Colors.grey[600]),
                      text: 'Invite Friends',
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    OptionTile(
                      icon: Icon(Icons.notifications_none_sharp,
                          color: Colors.grey[600]),
                      text: 'Notification',
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    OptionTile(
                      icon:
                          Icon(Icons.vpn_key_outlined, color: Colors.grey[600]),
                      text: 'Privacy',
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    OptionTile(
                      icon: Icon(Icons.account_circle_outlined,
                          color: Colors.grey[600]),
                      text: 'Account',
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    OptionTile(
                      icon: Icon(Icons.help_outline, color: Colors.grey[600]),
                      text: 'Help',
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    OptionTile(
                      icon: Icon(Icons.info_outline, color: Colors.grey[600]),
                      text: 'About us',
                    ),
                    SizedBox(
                      height: 20.0,
                    )
                  ],
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 10.0),
                child: Container(
                  child: FlatButton(
                      onPressed: () async {
                        await FirebaseAuth.instance
                            .signOut()
                            .then((result) => Navigator.pushReplacementNamed(
                                context, "/login"))
                            .catchError((err) => print(err));
                        /* Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login())); */
                      },
                      child: new Text('Sign out',
                          style: new TextStyle(
                            color: Colors.grey[600],
                            fontSize: 25.0,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.3,
                          ))),
                  height: 60.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0)),
                ))
          ],
        ));
  }
}
