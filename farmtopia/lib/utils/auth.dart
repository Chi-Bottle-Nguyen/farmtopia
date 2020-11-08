//import 'package:farmtopia/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

//THIS FILE CURRENTLY DOING NOTHING//

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Our app',
      theme: ThemeData(
        primaryColor: Colors.red[300],
      ),
      home: Container(
        color: Colors.white,
        child: Center(child: Text('Hello')),
      ),
    );
  }
}

class Auth {
  FirebaseAuth auth = FirebaseAuth.instance;

  void signIn(String email, String password) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password)
          .then((currentUser) => print(currentUser.user.uid));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No account found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided.');
      }
    }
  }

  void userAuth() {
    auth.authStateChanges().listen((User user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
  }

  void signInTest() async {
    try {
      final authResult = await auth.signInWithEmailAndPassword(
          email: 'ngchi250@gmail.com', password: 'Hellothisismypassword');
      var myuser = authResult.user;
      print(myuser.uid);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
}

/*Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  print('Test print');
  runApp(MyApp());
  FirebaseAuth.instance.authStateChanges().listen((User user) {
    if (user == null) {
      print('User is currently signed out!');
    } else {
      print('User is signed in!');
      print(user.getIdToken());
    }
  });

  try {
    final authResult = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: 'ngchi250@gmail.com', password: 'Hellothisismypassword');
    var myuser = authResult.user;
    print(myuser.uid);
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      print('Wrong password provided for that user.');
    }
  }

  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: "barry.allen@example.com", password: "SuperSecretPassword!");
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    }
  } catch (e) {
    print(e);
  } 
} */
