import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../globals/global_vars.dart';
import '../screens/bottom_nav_bar_screens.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Divider(
            height: 1,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  currentIndex = 0;
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavBarScreens()));
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.location_on_sharp,
                      color: Color.fromRGBO(255, 0, 127, 1),
                    ),
                    Text(
                      'Feed',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ],
                ),
              ),
              // GestureDetector(
              //   onTap: () {
              //     currentIndex = 1;
              //     Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavBarScreens()));
              //   },
              //   child: Column(
              //     children: [
              //       Icon(
              //         Icons.people,
              //         color: Color.fromRGBO(255, 0, 127, 1),
              //       ),
              //       Text(
              //         'Likes',
              //         style: TextStyle(
              //           fontSize: 12,
              //           color: Colors.blueGrey,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              GestureDetector(
                onTap: () {
                  currentIndex = 2;
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavBarScreens()));
                },
                child: Column(
                  children: [
                    Icon(
                      FontAwesomeIcons.solidComments,
                      color: Color.fromRGBO(255, 0, 127, 1),
                    ),
                    Text(
                      'Chats',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  currentIndex = 2;
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavBarScreens()));
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.person,
                      color: Color.fromRGBO(255, 0, 127, 1),
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
