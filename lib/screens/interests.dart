import 'package:flutter/material.dart';
import 'package:kwekwana/screens/home_landing_screen.dart';
import 'package:kwekwana/screens/profile_pic.dart';

import 'bottom_nav_bar_screens.dart';

class Interests extends StatefulWidget {
  const Interests({Key? key}) : super(key: key);

  @override
  State<Interests> createState() => _InterestsState();
}

class _InterestsState extends State<Interests> {
  List<Map<String, dynamic>> listData = [
    {'icon': Icons.camera_alt_rounded, 'desc': 'Photography', 'istapped': false},
    {'icon': Icons.shopping_bag_outlined, 'desc': 'Shopping', 'istapped': false},
    {'icon': Icons.keyboard_voice, 'desc': 'Karaoke', 'istapped': false},
    {'icon': Icons.sports_gymnastics_sharp, 'desc': 'Yoga', 'istapped': false},
    {'icon': Icons.emoji_food_beverage_rounded, 'desc': 'Cooking', 'istapped': false},
    {'icon': Icons.sports_baseball_outlined, 'desc': 'Tennis', 'istapped': false},
    {'icon': Icons.directions_run_outlined, 'desc': 'Run', 'istapped': false},
    {'icon': Icons.water, 'desc': 'Swimming', 'istapped': false},
    {'icon': Icons.cookie_outlined, 'desc': 'Art', 'istapped': false},
    {'icon': Icons.directions_bus_filled_outlined, 'desc': 'Travelling', 'istapped': false},
    {'icon': Icons.diamond_outlined, 'desc': 'Extreme', 'istapped': false},
    {'icon': Icons.music_note, 'desc': 'Music', 'istapped': false},
    {'icon': Icons.no_drinks_rounded, 'desc': 'Drink', 'istapped': false},
    {'icon': Icons.videogame_asset_outlined, 'desc': 'Video games', 'istapped': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 35.0, 0, 0),
        width: double.infinity,
        decoration: const BoxDecoration(
          // color: Color.fromRGBO(255, 244, 245, 1),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Color.fromRGBO(249, 231, 255, 1),
              Color.fromRGBO(254, 239, 246, 1),
              Color.fromRGBO(253, 249, 255, 1),
              Color.fromRGBO(253, 249, 255, 1),
              Color.fromRGBO(251, 216, 234, 1),
              Color.fromRGBO(251, 216, 234, 1),
            ], // Gradient from https://learnui.design/tools/gradient-generator.html
            tileMode: TileMode.mirror,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: Color.fromRGBO(255, 0, 127, 1),
                        size: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 30),
              width: 300,
              child: const Text(
                'Select a few more options and let your matches know what you\'re passionate about',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(153, 150, 154, 1),
                  fontSize: 17,
                  height: 1.3,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                  // color: Colors.red,
                  padding: EdgeInsets.only(right: 10),
                  child: GridView.builder(
                    padding: EdgeInsets.all(0),
                    scrollDirection: Axis.vertical,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 3.6,
                    ),
                    itemCount: listData.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            if (listData[index]['istapped'] == false) {
                              listData[index]['istapped'] = true;
                            } else {
                              listData[index]['istapped'] = false;
                            }
                          });
                        },
                        child: Container(
                          width: 163,
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: listData[index]['istapped'] == true ? Color.fromRGBO(255, 0, 127, 1) : Colors.white,
                            border: Border.all(
                              color: Color.fromRGBO(240, 240, 240, 1),
                            ),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                listData[index]['icon'] as IconData,
                                color:
                                    listData[index]['istapped'] == true ? Colors.white : Color.fromRGBO(255, 0, 127, 1),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                listData[index]['desc'].toString(),
                                style: TextStyle(
                                  color: listData[index]['istapped'] == true ? Colors.white : Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15, top: 10, bottom: 10),
              child: Material(
                elevation: 0.1,
                color: Color.fromRGBO(255, 0, 127, 1),
                borderRadius: BorderRadius.circular(50.0),
                child: MaterialButton(
                  onPressed: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePic()),
                    );
                  },
                  height: 42.0,
                  minWidth: 400,
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
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
