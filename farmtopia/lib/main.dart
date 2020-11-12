import 'package:flutter/material.dart';
import 'package:farmtopia/pages/home.dart';
import 'package:farmtopia/pages/login.dart';
import 'package:farmtopia/pages/loading.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Our app',
      theme: ThemeData(
        primaryColor: Colors.red[300],
        //primaryColor: Color(0xFFFFBA52),
        brightness: Brightness.light,
      ),
      home: Loading(),
      initialRoute: '/',
      routes: {
        '/home': (BuildContext context) => HomePage(),
        '/login': (BuildContext context) => Login(),
        //'/register': (BuildContext context) => Register()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
