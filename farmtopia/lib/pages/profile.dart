import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[50],
        body: Center(
          child: Text(
            'Profile',
            style: GoogleFonts.oxygen(fontSize: 30.0),
            overflow: TextOverflow.ellipsis,
          ),
        ));
  }
}
