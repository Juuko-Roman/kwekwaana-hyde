import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kwekwana/screens/edit_profile.dart';
import 'package:kwekwana/screens/settings_screen.dart';

import 'images_in_profile_preview.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0).copyWith(top: 30),
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          Container(
            // color: Colors.red,
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color.fromRGBO(255, 254, 255, 1),
                  Color.fromRGBO(255, 251, 253, 1),
                  Color.fromRGBO(255, 247, 251, 1),
                  Color.fromRGBO(255, 244, 249, 1),
                ],
                tileMode: TileMode.mirror,
              ),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 2),
                  blurRadius: 6,
                  color: Color.fromRGBO(100, 100, 100, 0.5),
                ),
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        // color: Colors.red,
                        width: 90,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              // color: Colors.red,
                              width: 25,
                              height: 25,
                              child: Stack(
                                children: [
                                  Positioned(
                                    bottom: 0,
                                    child: Icon(
                                      FontAwesomeIcons.database,
                                      size: 20,
                                      color: Color.fromRGBO(255, 0, 127, 1),
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    child: Icon(
                                      FontAwesomeIcons.database,
                                      size: 20,
                                      color: Color.fromRGBO(255, 0, 127, 1),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Text(
                              '1000.0',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen()));
                        },
                        child: Icon(
                          Icons.settings,
                          size: 40,
                          color: Color.fromRGBO(255, 0, 127, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 210,
                  margin: EdgeInsets.only(top: 30),
                  // color: Colors.red,
                  child: Stack(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 5,
                            color: Color.fromRGBO(255, 0, 127, 1),
                          ),
                        ),
                        child: const CircleAvatar(
                          backgroundImage: AssetImage('images/image1.jpg'),
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          left: 60,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 0, 127, 1),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Text(
                              '100 %',
                              style: TextStyle(color: Colors.white),
                            ),
                          ))
                    ],
                  ),
                ),
                Container(
                  width: 280,
                  margin: EdgeInsets.only(top: 15, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Scarlet Adams, 23',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Color.fromRGBO(89, 97, 104, 1),
                        ),
                      ),
                      Icon(
                        Icons.verified_user,
                        size: 40,
                        color: Color.fromRGBO(255, 0, 127, 1),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 250,
                  // color: Colors.red,
                  padding: EdgeInsets.only(right: 25),
                  margin: EdgeInsets.only(top: 0, bottom: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.location_on_sharp,
                        size: 35,
                        color: Color.fromRGBO(89, 97, 104, 0.5),
                      ),
                      Text(
                        'Central Kampala, UG',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color.fromRGBO(89, 97, 104, 0.5),
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile()));
                  },
                  child: Container(
                    width: 200,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 0, 127, 0.2),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          FontAwesomeIcons.edit,
                          color: Color.fromRGBO(255, 0, 127, 1),
                          size: 35,
                        ),
                        Text(
                          'Edit profile',
                          style: TextStyle(
                            color: Color.fromRGBO(255, 0, 127, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 330,
                  margin: EdgeInsets.only(top: 30, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.solidHeart,
                              size: 30,
                              color: Color.fromRGBO(255, 0, 127, 1),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '20 Likes',
                              style: TextStyle(
                                color: Color.fromRGBO(255, 0, 127, 1),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.remove_red_eye,
                              size: 30,
                              color: Color.fromRGBO(255, 0, 127, 1),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '20 Views',
                              style: TextStyle(
                                color: Color.fromRGBO(255, 0, 127, 1),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.share,
                              size: 30,
                              color: Color.fromRGBO(255, 0, 127, 1),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '20 Shares',
                              style: TextStyle(
                                color: Color.fromRGBO(255, 0, 127, 1),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0).copyWith(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Gallery',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromRGBO(89, 97, 104, 1),
                  ),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromRGBO(255, 0, 127, 1),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImagesPreview(
                          imageIindex: 0,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    height: 250,
                    // width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/pic2.jpeg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImagesPreview(
                          imageIindex: 1,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    height: 250,
                    // width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/image1.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImagesPreview(
                          imageIindex: 2,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    height: 180,
                    // width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/person_pic.jpeg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImagesPreview(
                          imageIindex: 1,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    height: 180,
                    // width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/image1.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImagesPreview(
                          imageIindex: 0,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    height: 180,
                    // width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/pic2.jpeg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
