import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'airtel_mobile_money.dart';
import 'chat_inbox.dart';

class HomeLandingScreen extends StatefulWidget {
  const HomeLandingScreen({Key? key}) : super(key: key);

  @override
  State<HomeLandingScreen> createState() => _HomeLandingScreenState();
}

class _HomeLandingScreenState extends State<HomeLandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => ChatInBox()));
                              },
                              child: Container(
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
        ),
      ),
    );
  }
}
