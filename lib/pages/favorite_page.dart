import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Favorite extends StatefulWidget {
  static const String id = "favorite";

  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          colors: [
            Colors.greenAccent.withOpacity(0.5),
            Colors.greenAccent.withOpacity(0.4),
            Colors.greenAccent.withOpacity(0.3),
            Colors.greenAccent.withOpacity(0.2),
          ],
        ),
      ),
      child: Center(
        child: Lottie.asset(
          "assets/others/likepage.json",
        ),
      ),
    );
  }
}
