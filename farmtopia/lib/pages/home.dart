import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; //google font packages, fetch font http

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          // Creating AppBar
          child: AppBar(
            title: Text(
              'Farmtopia',
              style: GoogleFonts.pacifico(fontSize: 30.0),
              overflow: TextOverflow.ellipsis,
            ),
            centerTitle: true,
          ),
        ),
        body: _mybody());
  }

  Widget _mybody() {
    return Center(
      child: Text('Welcome to FarmTopia',
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
    );
  }
}
