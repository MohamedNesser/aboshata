import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/presantion/screens/home_screen/home_screen.dart';
import 'package:graduationproject/presantion/screens/info_screen/info_screen.dart';

void main() => runApp(MaterialApp(home: BottomNavBarscreen()));

class BottomNavBarscreen extends StatefulWidget {
  @override
  _BottomNavBarscreenState createState() => _BottomNavBarscreenState();
}

class _BottomNavBarscreenState extends State<BottomNavBarscreen> {
  int page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  List<Widget> _buildScreens = [
    HomeScreen(),
    InfoScreen(),
    InfoScreen(),
    InfoScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: page,
        height: MediaQuery.of(context).size.height / 14,
        items: [
          CurvedNavigationBarItem(
            child: Column(
              children: [Icon(Icons.home_outlined), Text("Home")],
            ),
          ),
          CurvedNavigationBarItem(
            child: Column(
              children: [Icon(Icons.phone_callback_rounded), Text("contact")],
            ),
          ),
          CurvedNavigationBarItem(
            child: Column(
              children: [Icon(Icons.person_outline), Text("Profile")],
            ),
          ),
          CurvedNavigationBarItem(
            child: Column(
              children: [Icon(Icons.info_outline_rounded), Text("Info")],
            ),
          ),
        ],
        color: Colors.white,
        backgroundColor: Color(0xFFC8C5CE),
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: _buildScreens[page],
    );
  }
}
