import 'package:flutter/material.dart';
import 'package:hotel_booking/pages/home.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

class SplashPage extends StatefulWidget {
  static const String id = "splash_page";

  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      centered: true,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
      splash: Stack(

        children: [
          Container(
            width: double.infinity,
            height: 800,
            decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  colors: [
                    Colors.lightGreen.withOpacity(0.5),
                    Colors.lightGreen.withOpacity(0.4),
                    Colors.lightGreen.withOpacity(0.3),
                    Colors.lightGreen.withOpacity(0.2),
                  ],
                )
            ),
            child: Center(
              child:
              Lottie.asset('assets/others/tavel.json', fit: BoxFit.cover),
            ),
          ),
        ],
      ),
      nextScreen: HomePage(),
      duration: 1600,
     splashIconSize: 1000,
      animationDuration: Duration(seconds: 1),
    );
  }
}
