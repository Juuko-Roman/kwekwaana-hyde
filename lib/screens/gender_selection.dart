import 'package:flutter/material.dart';

import 'interests.dart';

class GenderSelection extends StatefulWidget {
  const GenderSelection({Key? key}) : super(key: key);

  @override
  State<GenderSelection> createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  bool male1Tapped = false;
  bool male2Tapped = false;
  bool female1Tapped = false;
  bool female2Tapped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.fromLTRB(20, 35.0, 20, 0),
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
                  margin: EdgeInsets.fromLTRB(10, 0, 0, 40),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Text(
                  'Gender',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Color.fromRGBO(255, 0, 127, 1),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10, top: 10, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      male1Tapped = !male1Tapped;
                    });
                  },
                  child: Container(
                    width: 140,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: male1Tapped ? Color.fromRGBO(255, 0, 127, 1) : Colors.white,
                      border: Border.all(
                        color: Color.fromRGBO(240, 240, 240, 1),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.boy,
                          color: male1Tapped ? Colors.white : Color.fromRGBO(255, 0, 127, 1),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Male',
                          style: TextStyle(
                            color: male1Tapped ? Colors.white : Color.fromRGBO(255, 0, 127, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      female1Tapped = !female1Tapped;
                    });
                  },
                  child: Container(
                    width: 140,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: female1Tapped ? Color.fromRGBO(255, 0, 127, 1) : Colors.white,
                      border: Border.all(
                        color: Color.fromRGBO(240, 240, 240, 1),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.girl,
                          color: female1Tapped ? Colors.white : Color.fromRGBO(255, 0, 127, 1),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Female',
                          style: TextStyle(
                            color: female1Tapped ? Colors.white : Color.fromRGBO(255, 0, 127, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 28.0, top: 10),
                child: Text(
                  'Looking For',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Color.fromRGBO(255, 0, 127, 1),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10, top: 10, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      male2Tapped = !male2Tapped;
                    });
                  },
                  child: Container(
                    width: 140,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: male2Tapped ? Color.fromRGBO(255, 0, 127, 1) : Colors.white,
                      border: Border.all(
                        color: Color.fromRGBO(240, 240, 240, 1),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.boy,
                          color: male2Tapped ? Colors.white : Color.fromRGBO(255, 0, 127, 1),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Male',
                          style: TextStyle(
                            color: male2Tapped ? Colors.white : Color.fromRGBO(255, 0, 127, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      female2Tapped = !female2Tapped;
                    });
                  },
                  child: Container(
                    width: 140,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: female2Tapped ? Color.fromRGBO(255, 0, 127, 1) : Colors.white,
                      border: Border.all(
                        color: Color.fromRGBO(240, 240, 240, 1),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.girl, color: female2Tapped ? Colors.white : Color.fromRGBO(255, 0, 127, 1)),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Female',
                          style: TextStyle(color: female2Tapped ? Colors.white : Color.fromRGBO(255, 0, 127, 1)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 28.0, top: 10),
                child: Text(
                  'About myself',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Color.fromRGBO(255, 0, 127, 1),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10, top: 20),
            padding: EdgeInsets.only(right: 80),
            width: MediaQuery.of(context).size.width * 0.85,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Container(
              margin: EdgeInsets.only(top: 50, bottom: 20),
              padding: EdgeInsets.only(left: 30),
              width: 250,
              child: const Text(
                'Let everyone know about you by sharing a few moe details',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(153, 150, 154, 1),
                  fontSize: 16,
                  height: 1.3,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15, top: 15),
            child: Material(
              elevation: 0.1,
              borderRadius: BorderRadius.circular(50.0),
              child: MaterialButton(
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Interests()),
                  );
                },
                height: 42.0,
                minWidth: 400,
                child: const Text(
                  'Submit',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 83, 169, 1),
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
