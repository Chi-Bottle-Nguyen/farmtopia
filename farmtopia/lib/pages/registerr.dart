import 'package:farmtopia/components/rounded_button.dart';
import 'package:farmtopia/pages/home.dart';
import 'package:farmtopia/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Registerr extends StatefulWidget {
  @override
  _RegisterrState createState() => _RegisterrState();
}

class _RegisterrState extends State<Registerr> {
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
                  icon: Icon(Icons.markunread),
                  labelText: 'Enter Job',
                ))),
            Padding(
                padding: EdgeInsets.only(left: 20.0, right: 30.0),
                child: TextFormField(
                    decoration: const InputDecoration(
                  icon: Icon(Icons.lock_outline),
                  labelText: 'Enter Location',
                ))),
            SizedBox(height: 30.0),
            RoundedButton(
                text: 'Register',
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
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
