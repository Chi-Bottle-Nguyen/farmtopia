import 'package:flutter/material.dart';

class Postfeature extends StatelessWidget {
  final String author;
  final String profilePic;
  static const String defaultImage =
      'https://www.clinicasamaniego.com/wp-content/uploads/sites/5/2018/10/uno.png';

  const Postfeature({this.author = 'Guest', this.profilePic = defaultImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, top: 70.0, right: 10.0),
      child: Container(
          height: 410.0,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.grey,
                offset: Offset(-3, 3),
                blurRadius: 1.0,
                spreadRadius: 1.0)
          ], color: Colors.white, borderRadius: BorderRadius.circular(25.0)),
          child: Column(
            children: [
              SizedBox(height: 10.0),
              Row(
                children: [
                  SizedBox(width: 10.0),
                  CircleAvatar(backgroundImage: NetworkImage(this.profilePic)),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Text(
                          this.author,
                          style: TextStyle(fontSize: 24.0),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Icon(Icons.agriculture)
                      ]),
                      Text('10-23-2020')
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                  height: 265.0,
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Make a post'),
                      style: TextStyle(fontSize: 20.0))),
              const Divider(
                color: Colors.blueGrey,
                height: 30,
                thickness: 1,
                indent: 0,
                endIndent: 0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const <Widget>[
                  Icon(
                    Icons.upload_outlined,
                    color: Colors.blueGrey,
                  ),
                  Icon(
                    Icons.assignment_ind_outlined,
                    color: Colors.blueGrey,
                  ),
                  Icon(
                    Icons.add_photo_alternate_outlined,
                    color: Colors.blueGrey,
                  ),
                  Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.blueGrey,
                  ),
                  Icon(
                    Icons.chat_outlined,
                    color: Colors.blueGrey,
                  )
                ],
              )
            ],
          )),
    );
  }
}
