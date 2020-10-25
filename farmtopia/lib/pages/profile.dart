import 'package:farmtopia/components/post.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFFF3DB74), body: _mybody());
  }

  Widget _mybody() {
    return ListView(children: <Widget>[
      Padding(
          padding: EdgeInsets.only(left: 30.0, top: 20.0),
          child: Row(
            children: [
              CircleAvatar(
                  radius: 60.0,
                  backgroundImage: NetworkImage(
                      'https://www.clinicasamaniego.com/wp-content/uploads/sites/5/2018/10/uno.png')),
              SizedBox(width: 20.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Fawzia',
                      style:
                          TextStyle(fontFamily: 'Montserrat', fontSize: 35.0)),
                  Row(
                    children: [
                      Text('Farmer ',
                          style: TextStyle(
                              fontFamily: 'Montserrat', fontSize: 25.0)),
                      Icon(Icons.agriculture),
                    ],
                  ),
                  Text('from Brooklyn',
                      style:
                          TextStyle(fontFamily: 'Montserrat', fontSize: 25.0))
                ],
              )
            ],
          )),
      SizedBox(height: 25.0),
      Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0))),
        child: ListView(
          children: [
            SizedBox(height: 20.0),
            BlogPost(
              content:
                  'Some content blah blah blah blah\nsome stuff hhhhihihihihihihihihihi \ntesting testing',
            ),
            BlogPost(
              content:
                  'Some content blah blah blah blah\nsome stuff hhhhihihihihihihihihihi \ntesting testing',
            )
          ],
        ),
      )
    ]);
  }
}
