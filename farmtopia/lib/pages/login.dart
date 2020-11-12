import 'package:farmtopia/components/rounded_button.dart';
<<<<<<< HEAD
import 'package:farmtopia/pages/home.dart';
import 'package:farmtopia/pages/register.dart';
=======
>>>>>>> ec968a632c8af83cdaaab77f4ec381e0dee43979
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

/*References: 
How to structure authentication: https://heartbeat.fritz.ai/firebase-user-authentication-in-flutter-1635fb175675 
Firebase authentication doc: https://firebase.flutter.dev/docs/auth/usage/
Flutter form: https://flutter.dev/docs/cookbook/forms/validation
*/

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  TextEditingController emailInputController;
  TextEditingController pwdInputController;

  @override
  initState() {
    emailInputController = new TextEditingController();
    pwdInputController = new TextEditingController();
    super.initState();
  }

  String tempValidator(String value) {
    if (value.isEmpty) {
      return 'Please enter some text';
    }
    return null;
  }

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
          Form(
              key: _loginFormKey,
              child: Column(
                children: [
                  //EMAIL
                  Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 30.0),
                      child: TextFormField(
                          controller: emailInputController,
                          keyboardType: TextInputType.emailAddress,
                          validator: tempValidator,
                          decoration: const InputDecoration(
                            icon: Icon(Icons.person),
                            labelText: 'Email',
                          ))),
                  //PASSWORD
                  Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 30.0),
                      child: TextFormField(
                          controller: pwdInputController,
                          validator: tempValidator,
                          obscureText: true,
                          decoration: const InputDecoration(
                            icon: Icon(Icons.lock_outline),
                            labelText: 'Password',
                          ))),
                  SizedBox(
                    height: 50.0,
                  ),
                  RoundedButton(
                    text: 'Sign in',
                    press: () async {
                      if (_loginFormKey.currentState.validate()) {
                        //Login function
                        try {
                          await FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                                  email: emailInputController.text,
                                  password: pwdInputController.text)
                              .then((result) => Navigator.pushReplacementNamed(
                                  context, "/home"));
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'user-not-found') {
                            print('No account found for that email.');
                          } else if (e.code == 'wrong-password') {
                            print('Wrong password provided.');
                          }
                        }
                      }
                    },
                  )
                ],
              )),
          SizedBox(height: 20.0),
          RoundedButton(
              text: 'Register',
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Register()));
              })
        ]),
      ),
    );
  }
}
