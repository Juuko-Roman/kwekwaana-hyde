import 'package:flutter/material.dart';
import 'package:kwekwana/widgets/backbutton.dart';

import '../../widgets/capsule.dart';
import '../../widgets/confirmation_button.dart';
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
  String selectedGender = '';
  String selectedLookingForGender = '';

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
          Align(
            alignment: Alignment.centerLeft,
            child: MyBackButton(
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          SizedBox(height: 20),
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
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      male1Tapped = !male1Tapped;

                      if (male1Tapped) {
                        selectedGender = 'Male';
                        female1Tapped = false;
                      } else {
                        selectedGender = '';
                      }
                    });
                  },
                  child: Capsule(isTapped: male1Tapped, iconData: Icons.boy, text: 'Male'),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        female1Tapped = !female1Tapped;
                        if (female1Tapped) {
                          male1Tapped = false;
                          selectedGender = 'Female';
                        } else {
                          selectedGender = '';
                        }
                      });
                    },
                    child: Capsule(isTapped: female1Tapped, iconData: Icons.girl, text: 'Female')),
              ),
            ]),
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
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        male2Tapped = !male2Tapped;
                        if (male2Tapped) {
                          female2Tapped = false;
                          selectedLookingForGender = 'Male';
                        } else {
                          selectedLookingForGender = '';
                        }
                      });
                    },
                    child: Capsule(isTapped: male2Tapped, iconData: Icons.boy, text: 'Male'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        female2Tapped = !female2Tapped;
                        if (female2Tapped) {
                          male2Tapped = false;
                          selectedLookingForGender = 'Female';
                        } else {
                          selectedLookingForGender = '';
                        }
                      });
                    },
                    child: Capsule(
                      isTapped: female2Tapped,
                      text: 'Female',
                      iconData: Icons.girl,
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
              child: ConfirmationButton(
                text: 'Submit',
                textColor: Color.fromRGBO(255, 83, 169, 1),
                color: Colors.white,
                onPressed: () async {
                  if ((selectedGender == '' || selectedLookingForGender == '')) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text('Ensure to select one of the options above')));
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Interests()),
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
