import 'package:farmtopia/components/rounded_button.dart';
import 'package:farmtopia/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3DB74),
      body: new Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors: [const Color(0xFFE683A9), const Color(0xFFF3DB74)],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp)),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Farmtopia',
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
                icon: Icon(Icons.lock_outline),
                labelText: 'Password',
              ))),
          SizedBox(
            height: 50.0,
          ),
          RoundedButton(
            text: 'Sign in',
            press: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          SizedBox(height: 20.0),
          RoundedButton(text: 'Register')
        ]),
      ),
    );
  }
}
