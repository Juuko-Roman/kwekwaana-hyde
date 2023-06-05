import 'package:flutter/material.dart';
import 'package:kwekwana/screens/payments/payment_successful.dart';

class MtnMobileMoney extends StatefulWidget {
  const MtnMobileMoney({Key? key}) : super(key: key);

  @override
  State<MtnMobileMoney> createState() => _MtnMobileMoneyState();
}

class _MtnMobileMoneyState extends State<MtnMobileMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Card(
            elevation: 2,
            margin: EdgeInsets.symmetric(horizontal: 0),
            child: Padding(
              padding: const EdgeInsets.only(left: 8, top: 30, bottom: 5),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 3),
                    padding: EdgeInsets.symmetric(horizontal: 0),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.025),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      tooltip: 'Back',
                      icon: const Icon(
                        Icons.arrow_back_ios_sharp,
                        color: Color.fromRGBO(255, 0, 127, 1),
                        size: 28,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage('images/mtn.png'),
                                fit: BoxFit.cover,
                              )),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 25),
              margin: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: <Color>[
                    Color.fromRGBO(255, 220, 249, 0.1),
                    Color.fromRGBO(254, 239, 246, 1),
                    Color.fromRGBO(251, 216, 234, 1),
                    Color.fromRGBO(251, 216, 234, 0.4),
                  ], // Gradient from https://learnui.design/tools/gradient-generator.html
                  tileMode: TileMode.mirror,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mtn Number',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    // controller: nameController,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 14),
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(238, 238, 238, 1),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromRGBO(241, 241, 241, 1), width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromRGBO(255, 0, 127, 1), width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Product name is required';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      // _pName = value!;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Amount',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    // controller: nameController,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 14),
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(238, 238, 238, 1),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromRGBO(241, 241, 241, 1), width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromRGBO(255, 0, 127, 1), width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Product name is required';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      // _pName = value!;
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 250,
                        child: Text(
                          'You\'ll get a prompt to confirm the payment on your selected number ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 18.0, top: 65),
                        child: Material(
                          elevation: 1.0,
                          color: Color.fromRGBO(255, 83, 169, 1),
                          borderRadius: BorderRadius.circular(50.0),
                          child: MaterialButton(
                            onPressed: () async {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentSuccessful()));
                            },
                            minWidth: 280,
                            height: 42.0,
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
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
