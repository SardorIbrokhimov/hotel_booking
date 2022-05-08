import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  static const String id = "profile";

  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 50,
                right: 5,
              ),
              child: Container(
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Full Name",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "6546854698549685",
                                style: TextStyle(fontSize: 20),
                              )
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.19,
                          ),
                          CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                AssetImage("assets/images/city1.jpg"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 15),
                    child: Row(
                      children: [
                        Text(
                          "Change Password",
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.39,
                        ),
                        Icon(
                          Icons.lock_outline,
                          color: Colors.grey.shade700,
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                    thickness: 2,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 15),
                    child: Row(
                      children: [
                        Text(
                          "Invite Friends",
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                        Icon(
                          Icons.people,
                          color: Colors.grey.shade700,
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                    thickness: 2,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 15),
                    child: Row(
                      children: [
                        Text(
                          "Credits & HGUF",
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                        ),
                        Icon(
                          Icons.card_giftcard,
                          color: Colors.grey.shade700,
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                    thickness: 2,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 15),
                    child: Row(
                      children: [
                        Text(
                          "Help Center",
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.54,
                        ),
                        Icon(
                          Icons.location_on_rounded,
                          color: Colors.grey.shade700,
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                    thickness: 2,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 15),
                    child: Row(
                      children: [
                        Text(
                          "Payment",
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.61,
                        ),
                        Icon(
                          Icons.credit_card_sharp,
                          color: Colors.grey.shade700,
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                    thickness: 2,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 15),
                    child: Row(
                      children: [
                        Text(
                          "Setting",
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.65,
                        ),
                        Icon(
                          Icons.settings_sharp,
                          color: Colors.grey.shade700,
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                    thickness: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
