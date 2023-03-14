import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeLandingScreen extends StatefulWidget {
  const HomeLandingScreen({Key? key}) : super(key: key);

  @override
  State<HomeLandingScreen> createState() => _HomeLandingScreenState();
}

class _HomeLandingScreenState extends State<HomeLandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(
          color: Color.fromRGBO(255, 0, 127, 1),
        ),
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
                Text(
                  'Matches',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(99, 107, 113, 1),
                    fontSize: 17,
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
                      Text(
                        'New Members',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Color.fromRGBO(255, 0, 127, 1),
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
                Container(
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
            child: Container(
              child: ListView.builder(
                  itemCount: 5,
                  padding: EdgeInsets.all(0),
                  itemBuilder: (context, index) => Container(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 40.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 625,
                                // color: Colors.red,
                                child: Stack(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                        bottom: 5,
                                        left: 2,
                                        right: 2,
                                      ),
                                      height: 500,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.blue,
                                        image: DecorationImage(
                                          image: AssetImage('images/pic2.jpeg'),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 100,
                                      right: 30,
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(right: 10),
                                            width: 50,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(50),
                                              border: Border.all(
                                                color: Color.fromRGBO(255, 229, 242, 1),
                                              ),
                                            ),
                                            child: CircleAvatar(
                                              backgroundColor: Color.fromRGBO(222, 0, 111, 1),
                                              child: Icon(
                                                Icons.close,
                                                size: 35,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 50,
                                            height: 50,
                                            margin: EdgeInsets.only(right: 10),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(50),
                                              boxShadow: const [
                                                BoxShadow(
                                                  offset: Offset(0, 2),
                                                  blurRadius: 6,
                                                  color: Color.fromRGBO(255, 150, 242, 1),
                                                ),
                                              ],
                                            ),
                                            child: CircleAvatar(
                                              backgroundColor: Colors.white,
                                              child: Icon(
                                                FontAwesomeIcons.solidHeart,
                                                size: 35,
                                                color: Color.fromRGBO(222, 0, 111, 1),
                                              ),
                                            ),
                                          ),
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
                                              backgroundColor: Color.fromRGBO(222, 0, 111, 1),
                                              child: Icon(
                                                FontAwesomeIcons.comment,
                                                size: 25,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 25,
                                      child: Container(
                                        // color: Colors.red,
                                        margin: EdgeInsets.only(left: 10),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Scarlet,',
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(99, 107, 113, 1),
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                                Text(
                                                  ' 26',
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(99, 107, 113, 1),
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.shopping_bag,
                                                  size: 16,
                                                  color: Color.fromRGBO(255, 0, 127, 1),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  'Business woman',
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(99, 107, 113, 1),
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.house,
                                                  size: 16,
                                                  color: Color.fromRGBO(255, 0, 127, 1),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  'Lives in Ntinda Kampala',
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(99, 107, 113, 1),
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.location_on_sharp,
                                                  size: 16,
                                                  color: Color.fromRGBO(255, 0, 127, 1),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  'Less than 7 miles away',
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(99, 107, 113, 1),
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
            ),
          )
        ],
      ),
    );
  }
}
