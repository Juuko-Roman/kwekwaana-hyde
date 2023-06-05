import 'package:flutter/material.dart';

class Visa extends StatefulWidget {
  const Visa({Key? key}) : super(key: key);

  @override
  State<Visa> createState() => _VisaState();
}

class _VisaState extends State<Visa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          color: Colors.grey,
          child: Padding(
            padding: const EdgeInsets.only(top: 38.0),
            child: Column(
              children: [
                Text('Add new card'),
                Container(
                  color: Color.fromRGBO(235, 235, 235, 1),
                  width: 600,
                  height: 640,
                  margin: EdgeInsets.only(top: 10, right: 20, left: 20),
                  child: Column(
                    children: [
                      Container(
                        color: Colors.white,
                        height: 100,
                        width: 600,
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 100, top: 50),
                                height: 70,
                                child: Image(image: AssetImage('images/visap.jpeg'))),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Text('Card Number'),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    height: 30,
                                    child: TextField(
                                      decoration: InputDecoration(border: OutlineInputBorder()),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text('Expiry Date'),
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        width: 100,
                                        height: 30,
                                        child: TextField(
                                          decoration: InputDecoration(border: OutlineInputBorder()),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text('CVV'),
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Container(
                                          width: 100,
                                          height: 30,
                                          child: TextField(
                                            decoration: InputDecoration(border: OutlineInputBorder()),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text('Name on card'),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    height: 30,
                                    child: TextField(
                                      decoration: InputDecoration(border: OutlineInputBorder()),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.verified,
                                    color: Colors.red,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text('Save Card details')
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0).copyWith(top: 30),
                        child: Material(
                          elevation: 1.5,
                          color: Color.fromRGBO(255, 83, 169, 1),
                          borderRadius: BorderRadius.circular(50.0),
                          child: MaterialButton(
                            onPressed: () {},
                            height: 42.0,
                            minWidth: 400,
                            child: const Text(
                              'Add Card',
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
                )
              ],
            ),
          ),
        ));
  }
}
