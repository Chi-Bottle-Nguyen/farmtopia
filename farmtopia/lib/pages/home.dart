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
        body: _mybody(),

        //Create Bottom navigation bar
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_sharp),
              label: 'Settings',
            ),
          ],
          selectedItemColor: Colors.pink[200],
          //onTap: _onItemTapped,
        ));
  }

  Widget _mybody() {
    return Center(
      child: Text('Welcome to FarmTopia',
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
    );
  }
}
