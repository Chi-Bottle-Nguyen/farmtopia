import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:farmtopia/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; //google font packages, fetch font http

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
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[50],
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
        body: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            children: <Widget>[
              _mybody(),
              Profile(),
              Container(
                color: Colors.pink,
              ),
              Container(
                color: Colors.pink[50],
              ),
            ],
          ),
        ),
        //Create Bottom navigation bar
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentIndex,
          onItemSelected: (index) {
            setState(() => _currentIndex = index);
            _pageController.jumpToPage(index);
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
                activeColor: Color(0xFFF48B90)),
            BottomNavyBarItem(
                icon: Icon(Icons.account_circle),
                title: Text('Profile'),
                activeColor: Color(0xFFF48B90)),
            BottomNavyBarItem(
                icon: Icon(Icons.search),
                title: Text('Search'),
                activeColor: Color(0xFFF48B90)),
            BottomNavyBarItem(
                icon: Icon(Icons.settings_sharp),
                title: Text('Settings'),
                activeColor: Color(0xFFF48B90)),
          ],
        ));
  }

  Widget _mybody() {
    return Center(
      child: Text('Welcome to FarmTopia',
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
    );
  }
}
