import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF3DB74),
        body: Center(
          child: Text(
            'Settings',
            style: GoogleFonts.oxygen(fontSize: 30.0),
            overflow: TextOverflow.ellipsis,
          ),
        ));
  }
}
