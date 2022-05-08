import 'package:flutter/material.dart';
import 'package:hotel_booking/pages/SignUp.dart';
import 'package:hotel_booking/pages/Sign_in.dart';
import 'package:hotel_booking/pages/favorite_page.dart';
import 'package:hotel_booking/pages/home.dart';
import 'package:hotel_booking/pages/main_page.dart';
import 'package:hotel_booking/pages/search_page.dart';
import 'package:hotel_booking/pages/sidebar.dart';
import 'package:hotel_booking/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),
      routes: {
        HomePage.id: (context) => HomePage(),
        SignIn.id: (context) => SignIn(),
        SignUp.id: (context) => SignUp(),
        SideBar.id: (context) => SideBar(),
        SearchPage.id: (context) => SearchPage(),
        SplashPage.id: (context) => SplashPage(),
        MainPage.id: (context) => MainPage(),
        Favorite.id: (context) => Favorite(),
      },
    );
  }
}
