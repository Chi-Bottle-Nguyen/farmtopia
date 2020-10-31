import 'package:farmtopia/pages/login.dart';
import 'package:flutter/material.dart';

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
                  child: FlatButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
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
