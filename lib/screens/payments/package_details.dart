import 'package:flutter/material.dart';
import 'package:kwekwana/screens/payments/payment_methods.dart';

class PackageDetails extends StatefulWidget {
  int packageIndex;
  PackageDetails({required this.packageIndex});

  @override
  State<PackageDetails> createState() => _PackageDetailsState(packageIndex: packageIndex);
}

class _PackageDetailsState extends State<PackageDetails> {
  int packageIndex;
  _PackageDetailsState({required this.packageIndex});
  List<Map<String, dynamic>> packageInfo = [
    {
      'title': 'Platinum',
      'image': 'images/plat.png',
      'packageBenefit': [
        'Spot Light',
        'Like profiles around the world',
        'Control age and distance',
        'Unlimited likes',
        'Video & audio calls',
        'Go Incognito',
        'Unread messages'
      ],
    },
    {
      'title': 'Gold',
      'image': 'images/Group 851.png',
      'packageBenefit': [
        'Spot light',
        'Like profiles around the world',
        'Control age and distance',
        'see 5 likes every month',
        'audio calls',
        'Unread messages'
      ],
    },
    {
      'title': 'Silver',
      'image': 'images/Group 850.png',
      'packageBenefit': [
        'Unlimited likes',
        'Spot light once every month',
        'See 2 likes every month',
        'Unread messages'
      ],
    },
  ];

  List<bool> isSelected = [false, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 20,
        backgroundColor: Colors.white,
        title: Text(
          packageInfo[packageIndex]['title']!,
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        leading: MaterialButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_sharp,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(children: [
        Expanded(
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
            padding: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.pink.shade50,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.7),
                  spreadRadius: 3,
                  blurRadius: 4,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Image(image: AssetImage(packageInfo[packageIndex]['image']!)),
              SizedBox(height: 20),
              SizedBox(
                height: 50.0,
                child: ToggleButtons(
                    isSelected: isSelected,
                    selectedColor: Color.fromRGBO(255, 83, 169, 1),
                    fillColor: Color.fromRGBO(255, 83, 169, 1),
                    borderWidth: 0.5,
                    borderColor: Colors.black26,
                    selectedBorderColor: Colors.black26,
                    borderRadius: BorderRadius.circular(50),
                    onPressed: (int newIndex) {
                      setState(() {
                        for (int index = 0; index < isSelected.length; index++) {
                          if (index == newIndex) {
                            isSelected[index] = true;
                          } else {
                            isSelected[index] = false;
                          }
                        }
                      });
                    },
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          '1 Month Ugshs',
                          style: TextStyle(
                              color: isSelected[0] ? Colors.white : Color.fromRGBO(255, 83, 169, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          '6 Month Ugshs',
                          style: TextStyle(
                            color: isSelected[1] ? Colors.white : Color.fromRGBO(255, 83, 169, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: SizedBox(
                          child: Text('12 Month Ugshs',
                              style: TextStyle(
                                color: isSelected[2] ? Colors.white : Color.fromRGBO(255, 83, 169, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              )),
                        ),
                      ),
                    ]),
              ),
              SizedBox(height: 30),
              for (int index = 0; index < packageInfo[packageIndex]['packageBenefit'].length; index++)
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    packageInfo[packageIndex]['packageBenefit'][index],
                    style: TextStyle(color: Colors.black38, fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                ),
            ]),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 30).copyWith(bottom: 10),
          child: Material(
            color: Color.fromRGBO(255, 83, 169, 1),
            elevation: 1.0,
            borderRadius: BorderRadius.circular(50.0),
            child: MaterialButton(
              onPressed: () async {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentMethods()));
              },
              height: 42.0,
              minWidth: 350,
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
        Padding(
          padding: const EdgeInsets.only(bottom: 25.0),
          child: const Text(
            'No Thanks',
            style: TextStyle(
              color: Colors.black38,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        )
      ]),
    );
  }
}
