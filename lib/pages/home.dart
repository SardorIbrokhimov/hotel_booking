import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/pages/Sign_in.dart';
import 'package:hotel_booking/pages/sidebar.dart';
import 'package:hotel_booking/pages/splash_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String hotelhome =
      "assets/images/home1.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,

            child: Image(

              image: AssetImage("$hotelhome"),
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100, right: 30, left: 30),
            child: Column(
              children: [
                Container(
                  height: 70,
                width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.greenAccent
                  ),
                  child: Center(
                    child: Icon(Icons.home,color: Colors.white,size: 30,),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                Text("Roome",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 10,
                ),
                Text("jhfjfjhkjyt87rfyuhguydutd",style: TextStyle(color: Colors.grey),),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                ),

                GestureDetector(
                  child: Container(
                    // width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.greenAccent,
                    ),
                    child: Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                            fontSize: 25, color: CupertinoColors.white),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, SignIn.id);
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Already do you have an account?",style: TextStyle(color: Colors.grey),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
