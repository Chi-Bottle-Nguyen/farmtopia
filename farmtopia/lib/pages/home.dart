import 'package:bottom_navy_bar/bottom_navy_bar.dart'; // interactive bottom navigation bar package
import 'package:farmtopia/components/post.dart';
import 'package:farmtopia/pages/profile.dart';
import 'package:farmtopia/pages/inbox.dart';
import 'package:farmtopia/pages/settings.dart';
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
  Icon _searchIcon = new Icon(Icons.search);
  Widget _appBarTitle = new Text(
    'Farmtopia',
    style: GoogleFonts.pacifico(fontSize: 30.0),
    overflow: TextOverflow.ellipsis,
  );

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

//Referenced from this article: https://medium.com/flutterpub/a-simple-search-bar-in-flutter-f99aed68f523
  void _searchPressed() {
    setState(() {
      if (this._searchIcon.icon == Icons.search) {
        this._searchIcon = new Icon(Icons.close);
        this._appBarTitle = new TextField(
          decoration: new InputDecoration(
              //prefixIcon: new Icon(Icons.search),
              hintText: 'Search something...'),
        );
      } else {
        this._searchIcon = new Icon(Icons.search);
        this._appBarTitle = new Text(
          'Farmtopia',
          style: GoogleFonts.pacifico(fontSize: 30.0),
          overflow: TextOverflow.ellipsis,
        );
      }
    });
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
              automaticallyImplyLeading: false,
              title: _appBarTitle,
              centerTitle: true,
              leading:
                  new IconButton(icon: _searchIcon, onPressed: _searchPressed)),
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
              Inbox(),
              Settings()
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
                icon: Icon(Icons.chat_outlined),
                title: Text('Inbox'),
                activeColor: Color(0xFFFFBA52)),
            BottomNavyBarItem(
                icon: Icon(Icons.settings_sharp),
                title: Text('Settings'),
                activeColor: Color(0xFFFFBA52)),
          ],
        ));
  }

  Widget _mybody() {
    return ListView(
      padding: EdgeInsets.only(bottom: 20.0),
      children: [
        BlogPost(
          author: 'Fawzia',
          profilePic: 'https://image.flaticon.com/icons/png/512/206/206865.png',
          content:
              'Hello. It\'s my first time farming.\nWill need lots of advice.',
        ),
        BlogPost(
          author: 'Joe Doe',
          profilePic:
              'https://slyszecbezgranic.pl/wp-content/uploads/2017/04/avatar-round-3-1.png',
          content:
              'Remember: Over-watering could \ncause runoff.\nDM me for advices.',
        ),
        BlogPost(
          author: 'Some Farmer',
          content:
              'Spotted lattern flies are coming\nPrepare your bug sprays.\nProtect your plants.',
        ),
        BlogPost(
          author: 'Other Farmer',
          profilePic:
              'https://cdn0.iconfinder.com/data/icons/kameleon-free-pack-rounded/110/Farmer-512.png',
          content:
              'Spotted lattern flies are like drunk \nairplanes. One hit my face today.\nStep on them if you can.',
        ),
        BlogPost(
          author: 'Other Farmer',
          profilePic:
              'https://cdn0.iconfinder.com/data/icons/kameleon-free-pack-rounded/110/Farmer-512.png',
          content:
              'Some content blah blah blah blah\nsome stuff hhhhihihihihihihihihihi \ntesting testing',
        ),
        BlogPost(
          author: 'Joe Doe',
          profilePic:
              'https://slyszecbezgranic.pl/wp-content/uploads/2017/04/avatar-round-3-1.png',
          content:
              'Some content blah blah blah blah\nsome stuff hhhhihihihihihihihihihi \ntesting testing',
        ),
      ],
    );
    /*  return Center(
      child: Text('Welcome to FarmTopia',
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
    ); */
  }
}
