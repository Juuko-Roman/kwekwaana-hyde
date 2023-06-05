import 'package:flutter/material.dart';
import 'package:kwekwana/screens/payments/paymentMethods/airtel_mobile_money.dart';
import 'package:kwekwana/screens/payments/paymentMethods/visa.dart';

import 'paymentMethods/mtn_mobile_money.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({Key? key}) : super(key: key);

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  int? selected_payment;
  List<Map<String, dynamic>> paymentOptions = [
    {
      'name': 'Mtn Mobile Money',
      'imageURL': 'images/mtn.png',
      'page': MtnMobileMoney(),
      'isSelected': true,
    },
    {
      'name': 'Airtel Money',
      'imageURL': 'images/airtel.jpg',
      'page': AirtelMobileMoney(),
      'isSelected': false,
    },
    {
      'name': 'Visa',
      'imageURL': 'images/visap.jpeg',
      'page': Visa(),
      'isSelected': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.keyboard_arrow_left_sharp,
            color: Color.fromRGBO(255, 0, 127, 1),
          ),
        ),
        title: Text(
          'Payment Options',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 5).copyWith(top: 3),
        decoration: BoxDecoration(
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
          children: [
            ...List.generate(
              paymentOptions.length,
              (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selected_payment = index;
                    paymentOptions.forEach((element) {
                      element['isSelected'] = false;
                    });
                    paymentOptions[index]['isSelected'] = true;
                    setState(() {});
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5).copyWith(top: 25),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                        color: Color.fromRGBO(255, 0, 127, 0.7),
                        width: paymentOptions[index]['isSelected'] ? 2.0 : 0.5),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image:
                              DecorationImage(image: AssetImage(paymentOptions[index]['imageURL']), fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(paymentOptions[index]['name'])
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 0.0, top: 25),
              child: Material(
                elevation: 1.0,
                color: Color.fromRGBO(255, 0, 127, 1),
                borderRadius: BorderRadius.circular(50.0),
                child: MaterialButton(
                  onPressed: () async {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => paymentOptions[selected_payment!]['page']));
                  },
                  minWidth: 350,
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
      ),
    );
  }
}
