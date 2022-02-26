import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:nutri_track/pages/AnalysisPage.dart';
import 'package:nutri_track/pages/HomePage.dart';
import 'package:nutri_track/pages/ProfilePage.dart';
import 'package:nutri_track/pages/ScanPage.dart';
import 'package:nutri_track/pages/SearchPage.dart';

class mainPage extends StatefulWidget {
  const mainPage({ Key? key }) : super(key: key);

  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {

  int currentIndex = 2;
  List pages = [
    ScanPage(),
    SearchPage(),
    HomePage(),
    AnalysisPage(),
    ProfilePage(),
  ];

  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.home, size: 30.0,),
      Icon(Icons.home, size: 30.0,),
      Icon(Icons.home, size: 30.0,),
      Icon(Icons.home, size: 30.0,),
      Icon(Icons.home, size: 30.0,), 
    ];

    return Container(
      color: Colors.blueGrey,
      child: SafeArea(
        top: false,
        child: ClipRect(
          child: Scaffold(
            extendBody: true,
            body: pages[currentIndex],
            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(
                iconTheme: IconThemeData(color: Colors.white),
              ),
              child: CurvedNavigationBar(
                // animationDuration: Duration(milliseconds: 1000),
                // backgroundColor: Colors.black,
                // curve: Curves.bounceIn,
                onTap:onTap,
                height: 60,
                buttonBackgroundColor: Color(0xFF91C788),
                color: Colors.blueGrey,
                index:currentIndex,
                backgroundColor: Colors.transparent,
                animationCurve: Curves.easeInOut,
                animationDuration: Duration(milliseconds: 300),
                // selectedIndex: currentIndex,
                // showElevation: false,
                // onItemSelected: (index){
                //   setState(() {
                //     currentIndex=index;
                //   },);
                // },
                items:items,
                // items: [
                //   BottomNavyBarItem(
                //     icon: Icon(Icons.home),
                //      title: Text('Home'),
                //      textAlign: TextAlign.center,
                //      activeColor: Colors.blueAccent,
                //      inactiveColor: Colors.black,
                //      ),
                //   BottomNavyBarItem(
                //     icon: Icon(Icons.search),
                //      title: Text('Search'),
                //      textAlign: TextAlign.center,
                //      activeColor: Colors.blueAccent,
                //      inactiveColor: Colors.black,
                //      ),
                //   BottomNavyBarItem(
                //     icon: Icon(Icons.qr_code_scanner),
                //      title: Text('Scan'),
                //      textAlign: TextAlign.center,
                //      activeColor: Colors.blueAccent,
                //      inactiveColor: Colors.black,
                //      ),
                //   BottomNavyBarItem(
                //     icon: Icon(Icons.bar_chart_rounded),
                //      title: Text('Analysis'),
                //      textAlign: TextAlign.center,
                //      activeColor: Colors.blueAccent,
                //      inactiveColor: Colors.black,
                //      ),
                //   BottomNavyBarItem(
                //     icon: Icon(Icons.person),
                //      title: Text('Profile'),
                //      textAlign: TextAlign.center,
                //      activeColor: Colors.blueAccent,
                //      inactiveColor: Colors.black,
                //      ),
                  
                // ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}