import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../globals/global_vars.dart';
import 'bottom_nav_bar_screens.dart';
import 'filter.dart';

class PeopleMatches extends StatefulWidget {
  const PeopleMatches({Key? key}) : super(key: key);

  @override
  State<PeopleMatches> createState() => _PeopleMatchesState();
}

class _PeopleMatchesState extends State<PeopleMatches> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  child: const Text(
                    'Matches',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Color.fromRGBO(255, 0, 127, 1),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 0,
                ),
                Container(
                  height: 20,
                  decoration: const BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        color: Color.fromRGBO(99, 107, 113, 1),
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'New Members',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(99, 107, 113, 1),
                          fontSize: 17,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Filter()));
                      },
                      child: const Icon(
                        Icons.filter_list_sharp,
                        size: 30,
                        color: Color.fromRGBO(255, 0, 127, 1),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10.0, bottom: 10),
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
                  onTap: () {},
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
                          child: const CircleAvatar(
                            backgroundColor: Color.fromRGBO(255, 229, 242, 1),
                            child: Icon(
                              Icons.add,
                              size: 25,
                              color: Color.fromRGBO(255, 0, 127, 1),
                            ),
                          ),
                        ),
                        const Text(
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
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(right: 10.0),
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
                            child: const CircleAvatar(
                              backgroundImage: AssetImage('images/image1.jpg'),
                            ),
                          ),
                          const Text(
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
              ],
            ),
          ),
          Expanded(
              child: GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 5),
            scrollDirection: Axis.vertical,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 40,
              childAspectRatio: 0.6,
            ),
            itemCount: 10,
            itemBuilder: (context, index) => Container(
              // margin: EdgeInsets.only(top: 10, left: 10, right: 10),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromRGBO(255, 255, 255, 1),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(1, 2),
                    blurRadius: 1.5,
                    color: Color.fromRGBO(200, 200, 200, 0.5),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15)),
                      image: DecorationImage(
                        image: AssetImage('images/image1.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 10,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Josh, 38'),
                                Container(
                                  height: 15,
                                  width: 15,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(36, 233, 88, 1),
                                    // color: Color.fromRGBO(200, 200, 200, 1),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                )
                              ],
                            ),
                            Text(
                              'Uganda, Kampala',
                              style: TextStyle(
                                color: Color.fromRGBO(99, 107, 113, 1),
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              '12 miles away',
                              style: TextStyle(
                                color: Color.fromRGBO(99, 107, 113, 1),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          )),
          Container(
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
                    GestureDetector(
                      onTap: () {
                        currentIndex = 1;
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavBarScreens()));
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.people,
                            color: Color.fromRGBO(255, 0, 127, 1),
                          ),
                          Text(
                            'Likes',
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
                        currentIndex = 3;
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
          ),
        ],
      ),
    );
  }
}
