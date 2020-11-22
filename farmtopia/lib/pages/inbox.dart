import 'package:flutter/material.dart';

class Inbox extends StatefulWidget {
  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3DB74),
      body: ListView(children: [
        Padding(
          padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 10.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15.0)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.0),
                Row(
                  children: [
                    SizedBox(
                      width: 20.0,
                    ),
                    CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://cdn0.iconfinder.com/data/icons/kameleon-free-pack-rounded/110/Farmer-512.png')),
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Other Farmer',
                            style: new TextStyle(
                              color: Colors.grey[900],
                              fontSize: 25.0,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.3,
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text('Hello. Nice to meet you.',
                            style: new TextStyle(
                              color: Colors.black,
                            ))
                      ],
                    )
                  ],
                ),
                const Divider(
                  color: Colors.blueGrey,
                  height: 30,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20.0,
                    ),
                    CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://slyszecbezgranic.pl/wp-content/uploads/2017/04/avatar-round-3-1.png')),
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Joe Doe',
                            style: new TextStyle(
                              color: Colors.grey[900],
                              fontSize: 25.0,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.3,
                            )),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text('Thanks! Lemme know if you need any help.',
                            style: new TextStyle(
                              color: Colors.black,
                            ))
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
