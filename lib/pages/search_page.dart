import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  static const String id = "search_page";

  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  getpageindex(index) {
    setState(() {
      _page = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SingleChildScrollView(
            child: Container(
              width: double.infinity,
              height: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://avatars.mds.yandex.net/i?id=876c965"
                      "826d05b95c7768340e49348f1-5666576-images-thumbs&n=13"),
                ),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Where are you going?",
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Colors.blue,
                                  ),
                                  border: InputBorder.none,
                                ),
                                cursorColor: Colors.blue,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                padding: EdgeInsets.only(top: 20, right: 20, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Destinations",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        children: [
                          Row(
                            children: [
                             GestureDetector(
                               child: _widgetRasm(rasm: "assets/images/city1.jpg"),
                             ),
                              GestureDetector(
                                child: _widgetRasm(rasm: "assets/images/city2.jpg"),
                              ),
                              GestureDetector(
                                child: _widgetRasm(rasm: "assets/images/city3.jpg"),
                              ),
                              GestureDetector(
                                child: _widgetRasm(rasm: "assets/images/hotel.jpg"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

}
Widget _widgetRasm({rasm, }){
return  Container(
  margin: EdgeInsets.only(top: 20, right: 20),
  height: 180,
  width: 180,
  decoration: BoxDecoration(
    color: Colors.grey,
    borderRadius: BorderRadius.circular(20),
    image: DecorationImage(
      image: AssetImage("$rasm",),fit: BoxFit.cover,

    )
  ),

);
}

