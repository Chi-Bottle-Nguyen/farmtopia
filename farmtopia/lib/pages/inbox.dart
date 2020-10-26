import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Inbox extends StatefulWidget {
  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF3DB74),
        body: Center(
          child: Text(
            'Inbox',
            style: GoogleFonts.oxygen(fontSize: 30.0),
            overflow: TextOverflow.ellipsis,
          ),
        ));
  }
}
