import 'package:flutter/material.dart';

import 'enable_location.dart';

class VerificationCode extends StatefulWidget {
  const VerificationCode({Key? key}) : super(key: key);

  @override
  State<VerificationCode> createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {
  TextEditingController? firstInputController;
  TextEditingController? secondInputController;
  TextEditingController? thirdInputController;
  TextEditingController? fourthInputController;

  @override
  void initState() {
    firstInputController = TextEditingController();
    secondInputController = TextEditingController();
    thirdInputController = TextEditingController();
    fourthInputController = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 48.0, 20, 0),
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
          children: [
            Row(
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
                        color: Color(0xFFFFFFFF),
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
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '0',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text(
                  '0',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text(
                  ':',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text(
                  '4',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text(
                  '2',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 30),
              width: 200,
              child: Text(
                'Type the verification code we have sent you',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color.fromRGBO(76, 74, 77, 1)),
              ),
            ),
            Container(
              width: 270,
              margin: EdgeInsets.only(bottom: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 60,
                    height: 65,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(245, 167, 206, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          // width: 10,
                          child: TextField(
                            controller: firstInputController,
                            textAlign: TextAlign.center,
                            cursorColor: Color.fromRGBO(245, 167, 206, 1),
                            keyboardType: TextInputType.none,
                            onChanged: (value) {},
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: const InputDecoration(
                              border: InputBorder.none,

                              // contentPadding: EdgeInsets.only(bottom: 10.0, left: 5.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 65,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(245, 167, 206, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          // width: 10,
                          child: TextField(
                            controller: secondInputController,
                            textAlign: TextAlign.center,
                            cursorColor: Color.fromRGBO(245, 167, 206, 1),
                            keyboardType: TextInputType.none,
                            onChanged: (value) {},
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: const InputDecoration(
                              border: InputBorder.none,

                              // contentPadding: EdgeInsets.only(bottom: 10.0, left: 5.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 65,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color.fromRGBO(244, 159, 171, 1),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          // width: 10,
                          child: TextField(
                            controller: thirdInputController,
                            textAlign: TextAlign.center,
                            cursorColor: Color.fromRGBO(245, 167, 206, 1),
                            keyboardType: TextInputType.none,
                            onChanged: (value) {},
                            style: TextStyle(
                              color: Color.fromRGBO(246, 179, 188, 1),
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: const InputDecoration(
                              border: InputBorder.none,

                              // contentPadding: EdgeInsets.only(bottom: 10.0, left: 5.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 65,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color.fromRGBO(234, 232, 236, 1),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          // width: 10,
                          child: TextField(
                            controller: fourthInputController,
                            textAlign: TextAlign.center,
                            cursorColor: Color.fromRGBO(245, 167, 206, 1),
                            keyboardType: TextInputType.none,
                            onChanged: (value) {},
                            style: TextStyle(
                              color: Color.fromRGBO(234, 232, 236, 1),
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: const InputDecoration(
                              border: InputBorder.none,

                              // contentPadding: EdgeInsets.only(bottom: 10.0, left: 5.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 300,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            firstInputController?.text = '1';
                          },
                          child: Container(
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  '1',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromRGBO(100, 100, 100, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            secondInputController?.text = '2';
                          },
                          child: Container(
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '2',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromRGBO(100, 100, 100, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            thirdInputController?.text = '3';
                          },
                          child: Container(
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '3',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromRGBO(100, 100, 100, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            fourthInputController?.text = '4';
                          },
                          child: Container(
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '4',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromRGBO(100, 100, 100, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '5',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(100, 100, 100, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '6',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(100, 100, 100, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '7',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(100, 100, 100, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '8',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(100, 100, 100, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '9',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(100, 100, 100, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '  ',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(100, 100, 100, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '0',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(100, 100, 100, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  fourthInputController?.text = '0';
                                },
                                child: Icon(
                                  Icons.backspace_outlined,
                                  size: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15, top: 10, bottom: 20),
              child: Material(
                elevation: 1.5,
                borderRadius: BorderRadius.circular(50.0),
                color: Color.fromRGBO(255, 255, 255, 1),
                child: MaterialButton(
                  onPressed: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EnableLocation()),
                    );
                  },
                  height: 42.0,
                  minWidth: 400,
                  child: const Text(
                    'Confirm',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 83, 169, 1),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            Text(
              'Resend Code',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
