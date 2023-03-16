import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'airtel_mobile_money.dart';
import 'country_screen.dart';
import 'home_landing_screen.dart';
import 'likes.dart';
import 'mtn_mobile_money.dart';
import 'package:kwekwana/screens/chat_screen.dart';
import 'package:kwekwana/screens/people_matches.dart';
import 'package:kwekwana/screens/profile.dart';
import 'package:kwekwana/screens/settings_screen.dart';

class BottomNavBarScreens extends StatefulWidget {
  const BottomNavBarScreens({Key? key}) : super(key: key);

  @override
  State<BottomNavBarScreens> createState() => _BottomNavBarScreensState();
}

class _BottomNavBarScreensState extends State<BottomNavBarScreens> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    HomeLandingScreen(),
    Likes(),
    ChatScreen(),
    Profile(),
    PeopleMatches(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(
          color: Color.fromRGBO(255, 0, 127, 1),
        ),
        selectedItemColor: Color.fromRGBO(255, 0, 127, 1),
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
              child: Icon(
                Icons.location_on_sharp,
                color: Color.fromRGBO(255, 0, 127, 1),
              ),
            ),
            label: "Feed",
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => MyAccount()),
                // );
              },
              child: Icon(
                Icons.people,
                color: Color.fromRGBO(255, 0, 127, 1),
              ),
            ),
            label: "Likes",
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => MyAccount()),
                // );
              },
              child: Icon(
                FontAwesomeIcons.solidComments,
                color: Color.fromRGBO(255, 0, 127, 1),
              ),
            ),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => MyAccount()),
                // );
              },
              child: Icon(
                Icons.person,
                color: Color.fromRGBO(255, 0, 127, 1),
              ),
            ),
            label: "Profile",
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 28.0, left: 20, right: 20, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {});
                  },
                  child: Text(
                    'Matches',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(99, 107, 113, 1),
                      fontSize: 17,
                    ),
                  ),
                ),
                SizedBox(
                  width: 0,
                ),
                Container(
                  height: 20,
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        color: Color.fromRGBO(99, 107, 113, 1),
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {});
                        },
                        child: Text(
                          'New Members',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Color.fromRGBO(255, 0, 127, 1),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Icon(
                        Icons.sort_outlined,
                        size: 30,
                        color: Color.fromRGBO(255, 0, 127, 1),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, bottom: 10),
            child: Text(
              'Spotlight',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(99, 107, 113, 1),
                fontSize: 12,
              ),
            ),
          ),
          Container(
            height: 67,
            // color: Colors.red,
            padding: EdgeInsets.symmetric(horizontal: 5),
            margin: EdgeInsets.only(bottom: 20),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            // color: Color.fromRGBO(255, 229, 242, 1),
                          ),
                          child: CircleAvatar(
                            backgroundColor: Color.fromRGBO(255, 229, 242, 1),
                            child: Icon(
                              Icons.add,
                              size: 25,
                              color: Color.fromRGBO(255, 0, 127, 1),
                            ),
                          ),
                        ),
                        Text(
                          'Add me',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromRGBO(99, 107, 113, 1),
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 8,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromRGBO(255, 229, 242, 1),
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage('images/image1.jpg'),
                                ),
                              ),
                              Text(
                                'Scarlet',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color.fromRGBO(99, 107, 113, 1),
                                  fontSize: 11,
                                ),
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
          Expanded(
            child: _children[_currentIndex],
          )
        ],
      ),
    );
  }
}
