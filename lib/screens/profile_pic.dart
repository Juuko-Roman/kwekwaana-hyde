import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            Container(
              margin: EdgeInsets.only(top: 40, left: 30, right: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(130),
                        color: Colors.white),
                    alignment: Alignment.center,
                    child: Container(
                      height: 83,
                      width: 83,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(120),
                          color: Color.fromRGBO(235, 235, 235, 1)),
                      alignment: Alignment.center,
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.red,
                          size: 50,
                        ),
                      ),
                    ),
                  ),
                  Container(
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
                          color: Colors.white),
                      child: Icon(
                        Icons.add,
                        color: Colors.red,
                        size: 50,
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: Icon(
                        Icons.add,
                        color: Colors.red,
                        size: 50,
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: Icon(
                        Icons.add,
                        color: Colors.red,
                        size: 50,
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 180,
                left: 60,
                right: 30,
                child: Container(
                    margin: EdgeInsets.only(top: 5),
                    child: const Text(
                      "Upload three photos of you",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
              ),
            ]),
            Container(
              margin: EdgeInsets.only(top: 50),
              width: 250,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromRGBO(192, 0, 96, 1)),
              child: MaterialButton(
                child: Text(
                  'Confirm',
                  style: TextStyle(fontSize: 25.0, color: Colors.white),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
