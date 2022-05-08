import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/pages/favorite_page.dart';
import 'package:hotel_booking/pages/profile_page.dart';
import 'package:hotel_booking/pages/search_page.dart';

class MainPage extends StatefulWidget {
  static const String id = "main_page";

  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  getpageindex(index) {
    setState(() {
      _page = index;
    });
  }

  List list = [
    SearchPage(),
    Favorite(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_page],
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        key: _bottomNavigationKey,
        index: _page,
        items: [
          Icon(Icons.search, size: 30),
          Icon(Icons.favorite_border, size: 30),
          Icon(Icons.person_outline, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.greenAccent,
        backgroundColor: Colors.green.shade300,
        animationCurve: Curves.linearToEaseOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: getpageindex,
        // letIndexChange: (index) => true,
      ),
    );
  }
}
