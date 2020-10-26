import 'package:bottom_navy_bar/bottom_navy_bar.dart'; // interactive bottom navigation bar package
import 'package:farmtopia/components/post.dart';
import 'package:farmtopia/pages/profile.dart';
import 'package:farmtopia/pages/inbox.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // google font package, fetch font http

// checkout: https://medium.com/@greg.perry/statefulwidgets-key-state-8ad83ac2e54f
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    //use with the PageView widget below
    //check: https://api.flutter.dev/flutter/widgets/PageController-class.html
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.pink[50],
        backgroundColor: Color(0xFFF3DB74),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          //   *****CREATING APP BAR*****
          child: AppBar(
            title: Text(
              'Farmtopia',
              style: GoogleFonts.pacifico(fontSize: 30.0),
              overflow: TextOverflow.ellipsis,
            ),
            centerTitle: true,
          ),
        ),
        body: SizedBox.expand(
          child: PageView(
            //PageView and PageController, check: https://api.flutter.dev/flutter/widgets/PageView-class.html
            //Use to navigate to different pages
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            children: <Widget>[
              //List of widget to navigate to
              _mybody(),
              Profile(),
              //Placeholder
              Container(
                color: Color(0xFFFFBA52),
              ),
              Container(
                color: Color(0xFFFFBA52),
              ),
              Inbox()
            ],
          ),
        ),
        //Create Bottom navigation bar using the imported package
        //check: https://pub.dev/packages/bottom_navy_bar
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentIndex,
          //Navigate to different page when tap an icon
          onItemSelected: (index) {
            setState(() => _currentIndex = index);
            _pageController.jumpToPage(index);
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
                activeColor: Color(0xFFFFBA52)),
            BottomNavyBarItem(
                icon: Icon(Icons.account_circle),
                title: Text('Profile'),
                activeColor: Color(0xFFFFBA52)),
            //activeColor: Color(0xFFF48B90)),
            BottomNavyBarItem(
                icon: Icon(Icons.create_outlined),
                title: Text('Post'),
                activeColor: Color(0xFFFFBA52)),
            BottomNavyBarItem(
                icon: Icon(Icons.search),
                title: Text('Search'),
                activeColor: Color(0xFFFFBA52)),
            BottomNavyBarItem(
                icon: Icon(Icons.chat_outlined),
                title: Text('Inbox'),
                activeColor: Color(0xFFFFBA52)),
          ],
        ));
  }

  Widget _mybody() {
    return ListView(
      children: [
        BlogPost(
          content:
              'Some content blah blah blah blah\nsome stuff hhhhihihihihihihihihihi \ntesting testing',
        ),
        BlogPost(
          content:
              'Some content blah blah blah blah\nsome stuff hhhhihihihihihihihihihi \ntesting testing',
        ),
        BlogPost(
          content:
              'Some content blah blah blah blah\nsome stuff hhhhihihihihihihihihihi \ntesting testing',
        ),
        BlogPost(
          content:
              'Some content blah blah blah blah\nsome stuff hhhhihihihihihihihihihi \ntesting testing',
        )
      ],
    );
    /*  return Center(
      child: Text('Welcome to FarmTopia',
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
    ); */
  }
}
