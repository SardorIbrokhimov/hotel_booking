import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotel_booking/pages/SignUp.dart';
import 'package:hotel_booking/pages/home.dart';
import 'package:hotel_booking/pages/main_page.dart';
import 'package:hotel_booking/pages/search_page.dart';
import 'package:lottie/lottie.dart';

class SignIn extends StatefulWidget {
  static const String id = "sign_in";

  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  int count = 0;
  int count2 = 0;
  late String email, password;
  bool _true = false;

  final userPost = GlobalKey<FormState>();

  _doSignIn() {
    if (userPost.currentState!.validate()) {
      userPost.currentState!.save();
      _true = true;
    }
  }

  Icon open = Icon(Icons.visibility);
  Icon close = Icon(Icons.visibility_off);
  bool on = false;
  bool on2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, HomePage.id);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Form(
                key: userPost,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  "Log In",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 30),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),

                          Row(
                            children: [
                              /////////////////// Facebook
                              Expanded(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.indigo,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.facebook,
                                          size: 30,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "facebook",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(
                                width: 25,
                              ),

                              /////////////// Twitter
                              Expanded(
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.blueAccent,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        FaIcon(
                                          FontAwesomeIcons.twitter,
                                          color: Colors.white,
                                          size: 25,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "twitter",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "IUGIYGFUYF",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.grey),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "uyrfutgfujgrdut",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.red),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),

                          //email container
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(171, 171, 171, 0.7),
                                  blurRadius: 20,
                                  offset: Offset(0, 10),
                                ),
                              ],
                            ),
                            padding: EdgeInsets.all(10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Email",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                                border: InputBorder.none,
                              ),
                              validator: (input) => input!.contains("@")
                                  ? null
                                  : "there is not '@' ",
                              onSaved: (input) => email = input!,
                              // controller: emailController,
                            ),
                          ),

                          SizedBox(
                            height: 20,
                          ),
                          ////////////////password container
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(171, 171, 171, 0.7),
                                  blurRadius: 20,
                                  offset: Offset(0, 10),
                                ),
                              ],
                            ),
                            padding: EdgeInsets.all(10),
                            child: TextFormField(
                              obscureText: on,
                              decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(
                                      () {
                                        on = !on;
                                      },
                                    );
                                  },
                                  icon: on ? open : close,
                                ),
                                border: InputBorder.none,
                              ),
                              validator: (input) {
                                if (input!.length >= 8) {
                                  return null;
                                } else {
                                  return "Password is invalid";
                                }
                              },
                              onSaved: (input) {
                                password = input!;
                              },
                              //  controller: passwordController,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                child: Text(
                                  "Forget Your Password?",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                                onTap: () {},
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: FlatButton(
                                onPressed: () {
                                  _doSignIn();
                                  _true
                                      ? Navigator.pushReplacementNamed(
                                          context, MainPage.id)
                                      : null;
                                },
                                child: Text(
                                  "Sign In",
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.white),
                                )),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an account?",
                                style: TextStyle(color: Colors.grey),
                              ),
                              GestureDetector(
                                child: Text(
                                  "Sing Up",
                                  style: TextStyle(color: Colors.greenAccent),
                                ),
                                onTap: () {
                                  Navigator.pushReplacementNamed(
                                      context, SignUp.id);
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
