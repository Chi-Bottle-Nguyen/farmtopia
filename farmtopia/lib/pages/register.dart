import 'package:farmtopia/components/rounded_button.dart';
import 'package:farmtopia/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:farmtopia/pages/registerr.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey<FormState> _registrationFormKey = GlobalKey<FormState>();
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
            Form(
                key: _registrationFormKey,
                child: Column(children: [
                  Padding(
                      //EMAIL
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
                      press: () async {
                        //if (_registrationFormKey.currentState.validate()) {
                        //Register function
                        print(emailInputController.text);
                        print(pwdInputController.text);
                        try {
                          await FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                                  email: emailInputController.text,
                                  password: pwdInputController.text)
                              .then((result) => Navigator.pushReplacementNamed(
                                  context, "/registerr"));
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'weak-password') {
                            print('The password provided is too weak.');
                          } else if (e.code == 'email-already-in-use') {
                            print('The account already exists for that email.');
                          }
                        } catch (e) {
                          print(e);
                        }
                        //}
                      })
                ])),
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
