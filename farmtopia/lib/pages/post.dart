import 'package:flutter/material.dart';
import 'package:farmtopia/components/postfeature.dart';
//import 'package:google_fonts/google_fonts.dart';

class Post extends StatefulWidget {
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFFF3DB74), body: _mybody());
  }

  Widget _mybody() {
    return ListView(children: <Widget>[
      Container(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Postfeature(
              author: 'Fawzia',
              profilePic:
                  'https://image.flaticon.com/icons/png/512/206/206865.png',
            ),
          ],
        ),
      )
    ]);
  }
}
