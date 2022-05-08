import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotel_booking/pages/SignUp.dart';
import 'package:hotel_booking/pages/Sign_in.dart';
import 'package:hotel_booking/pages/home.dart';
import 'package:hotel_booking/pages/main_page.dart';
import 'package:hotel_booking/pages/search_page.dart';
import 'package:lottie/lottie.dart';

class SignUp extends StatefulWidget {
  static const String id = "sign_up";

  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  int count = 0;
  int count2 = 0;
  late String email, password;

  final userPost = GlobalKey<FormState>();

  _doSignUp() {
    if (userPost.currentState!.validate()) {
      userPost.currentState!.save();
    }
  }

  Icon open = Icon(Icons.visibility);
  Icon close = Icon(Icons.visibility_off);
  bool on = false;
  bool on2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
                          SizedBox(
                            height: 50,
                          ),
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
                            height: 15,
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

                            ],
                          ),
                          SizedBox(
                            height: 30,
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
                                hintText: "First Name",
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
                                hintText: "Last Name",
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
                                  icon: on?open:close,
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
                          Center(child: Text(
                            "knkjgbiuyhfbkljnsdkuj0",style: TextStyle(color: Colors.grey.shade700),
                          ),),

                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: FlatButton(
                                onPressed: () {
                                  _doSignUp();
                                  Navigator.pushReplacementNamed(
                                      context, MainPage.id);
                                },
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.white),
                                )),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.07,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already do you have an account? ",
                                style: TextStyle(color: Colors.grey),
                              ),
                              GestureDetector(
                                child: Text(
                                  "Sing In",
                                  style: TextStyle(color: Colors.greenAccent),
                                ),
                                onTap: () {
                                  Navigator.pushReplacementNamed(
                                      context, SignIn.id);
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
