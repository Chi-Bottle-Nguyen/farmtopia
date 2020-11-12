import 'package:farmtopia/components/rounded_button.dart';
import 'package:farmtopia/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:farmtopia/pages/registerr.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE56373),
      body: new Container(
          decoration: new BoxDecoration(
              gradient: new LinearGradient(
                  colors: [const Color(0xFFE683A9), const Color(0xFFF3DB74)],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp)),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              ' Register\nFarmtopia',
              style: GoogleFonts.pacifico(fontSize: 50.0),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
                padding: EdgeInsets.only(left: 20.0, right: 30.0),
                child: TextFormField(
                    decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: 'Username',
                ))),
            Padding(
                padding: EdgeInsets.only(left: 20.0, right: 30.0),
                child: TextFormField(
                    decoration: const InputDecoration(
                  icon: Icon(Icons.markunread),
                  labelText: 'Email',
                ))),
            Padding(
                padding: EdgeInsets.only(left: 20.0, right: 30.0),
                child: TextFormField(
                    decoration: const InputDecoration(
                  icon: Icon(Icons.lock_outline),
                  labelText: 'Password',
                ))),
            Padding(
                padding: EdgeInsets.only(left: 20.0, right: 30.0),
                child: TextFormField(
                    decoration: const InputDecoration(
                  icon: Icon(Icons.lock_outline),
                  labelText: 'Re-enter Password',
                ))),
            SizedBox(height: 30.0),
            RoundedButton(
                text: 'Continue',
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Registerr()));
                }),
            SizedBox(height: 20.0),
            RoundedButton(
                text: 'Cancel',
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                })
          ])),
    );
  }
}
