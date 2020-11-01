import 'package:farmtopia/components/rounded_button.dart';
import 'package:farmtopia/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
// Creating a key used to connect the Login form to the validator
  final formKey = new GlobalKey<FormState>();

// Creating a form validator
  Function validateAndSave() {
    final form = formKey.currentState;
    if (form.validate()) {
      print('Form is valid');
    } else {
      print('Form is invalid');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3DB74),
      body: new Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // Creating Gradient effect of the background
        decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors: [const Color(0xFFE683A9), const Color(0xFFF3DB74)],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp)),
        // Other components: Logo, Email, Password textfield
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Farmtopia',
            style: GoogleFonts.pacifico(fontSize: 50.0),
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 10.0,
          ),
          // Login form
          Form(
            key: formKey, // key used to connect to the validator
            child: Column(
              children: [
                // Email
                Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 30.0),
                    child: TextFormField(
                        validator: (value) =>
                            value.isEmpty ? 'Email can\'t be empty' : null,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.person),
                          labelText: 'Email',
                        ))),
                // Password
                Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 30.0),
                    child: TextFormField(
                        validator: (value) =>
                            value.isEmpty ? 'Password can\'t be empty' : null,
                        obscureText: true,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.lock_outline),
                          labelText: 'Password',
                        ))),
                SizedBox(
                  height: 50.0,
                ),
                //RoundButton component imported from components/rounded_button.dart
                RoundedButton(
                  text: 'Sign in',
                  //press: validateAndSave()
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                ),
              ],
            ),
          ),

          SizedBox(height: 20.0),
          RoundedButton(text: 'Register')
        ]),
      ),
    );
  }
}
