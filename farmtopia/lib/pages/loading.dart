import 'package:flutter/material.dart';
//import 'package:splashscreen/splashscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  initState() {
    FirebaseAuth.instance.authStateChanges().listen((User user) {
      if (user == null) {
        print('User is currently signed out!');
        Navigator.pushReplacementNamed(context, "/login");
      } else {
        print('User is signed in!');
        Navigator.pushReplacementNamed(context, "/home");
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Text('Loading'),
    ));
  }

  /*  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      backgroundColor: Colors.white,
      seconds: 10,
      title: new Text(
        'Let\'s do something awesome!',
        textAlign: TextAlign.left,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 50.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      loadingText: new Text('moo moo',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey,
          )),
      loaderColor: Colors.blueGrey,
    );
  } */
}
