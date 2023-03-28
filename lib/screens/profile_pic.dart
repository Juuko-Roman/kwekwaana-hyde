import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kwekwana/screens/home_landing_screen.dart';

import 'bottom_nav_bar_screens.dart';

class ProfilePic extends StatefulWidget {
  const ProfilePic({Key? key}) : super(key: key);

  @override
  State<ProfilePic> createState() => _ProfilePicState();
}

class _ProfilePicState extends State<ProfilePic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(235, 235, 235, 1),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Column(
                      children: [
                        Text(
                          "Upload profile",
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'picture',
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 2),
                    blurRadius: 6,
                    color: Color.fromRGBO(200, 200, 200, 1),
                  ),
                ],
              ),
              width: 180,
              height: 180,
              margin: EdgeInsets.only(top: 15),
              child: Icon(
                Icons.photo_size_select_actual_outlined,
                size: 140,
                color: Color.fromRGBO(235, 235, 235, 1),
              ),
            ),
            Stack(children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 5),
                child: SvgPicture.asset('images/okwekwana.svg'),
              ),
              Positioned(
                top: 80,
                left: 15,
                right: 15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.add,
                        color: Color.fromRGBO(255, 0, 127, 1),
                        size: 50,
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white),
                      child: Icon(
                        Icons.add,
                        color: Color.fromRGBO(255, 0, 127, 1),
                        size: 50,
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white),
                      child: Icon(
                        Icons.add,
                        color: Color.fromRGBO(255, 0, 127, 1),
                        size: 50,
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 190,
                left: 80,
                right: 30,
                child: Container(
                    margin: EdgeInsets.only(top: 5),
                    child: const Text(
                      "Upload three photos of you",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    )),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15, top: 26),
              child: Material(
                elevation: 0.1,
                color: Color.fromRGBO(255, 0, 127, 1),
                borderRadius: BorderRadius.circular(50.0),
                child: MaterialButton(
                  onPressed: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BottomNavBarScreens()),
                    );
                  },
                  height: 42.0,
                  minWidth: 400,
                  child: const Text(
                    'Confirm',
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
