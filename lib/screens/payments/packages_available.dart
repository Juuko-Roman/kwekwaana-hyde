import 'package:flutter/material.dart';
import 'package:kwekwana/screens/payments/package_details.dart';

class PackagesAvailable extends StatefulWidget {
  const PackagesAvailable({Key? key}) : super(key: key);

  @override
  State<PackagesAvailable> createState() => _PackagesAvailableState();
}

class _PackagesAvailableState extends State<PackagesAvailable> {
  List<Map<String, dynamic>> packageInfo = [
    {
      'title': 'Platinum',
      'titleColor': Colors.black54,
      'packageNoColor': Colors.black26,
      'colorStops': <Color>[
        Color.fromRGBO(115, 115, 115, 1),
        Colors.black87,
      ],
    },
    {
      'title': 'Gold',
      'titleColor': Color.fromRGBO(130, 80, 0, 1).withOpacity(0.8),
      'packageNoColor': Color.fromRGBO(130, 80, 0, 1).withOpacity(0.4),
      'colorStops': <Color>[
        Color.fromRGBO(220, 170, 0, 1).withOpacity(0.6),
        Color.fromRGBO(220, 170, 0, 1),

        // Color.fromRGBO(115, 115, 115, 1),
      ],
    },
    {
      'title': 'Silver',
      'titleColor': Colors.white.withOpacity(0.6),
      'packageNoColor': Colors.white.withOpacity(0.2),
      'colorStops': <Color>[
        Colors.grey.shade500,
        Color.fromRGBO(80, 80, 70, 1),
      ],
    }
  ];
  String selectedPackage = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.5,
        backgroundColor: Colors.white,
        title: Text(
          'Packages',
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: const Text(
              'Select one package from options below',
              style: TextStyle(
                fontSize: 18,
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: ListView(
                padding: EdgeInsets.all(0),
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Each category u select comes with its own benefits which determine the overall price you will be paying so as to enjoy those benefits',
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  for (int i = 0; i < packageInfo.length; i++)
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PackageDetails(packageIndex: i)));
                        selectedPackage = packageInfo[i]['title'];
                      },
                      child: Container(
                        padding: EdgeInsets.only(bottom: 10),
                        margin: EdgeInsets.only(bottom: 15, left: 10, right: 10),
                        height: 150,
                        // width: 100,

                        decoration: BoxDecoration(
                          // color: Color(0x55555555),
                          gradient: LinearGradient(
                              colors: packageInfo[i]['colorStops'],
                              stops: [0.3, 1.0],
                              begin: FractionalOffset.topLeft,
                              end: FractionalOffset.bottomRight,
                              tileMode: TileMode.repeated),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10.0),
                              child: Text(
                                'Package ${i + 1}',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: packageInfo[i]['packageNoColor'],
                                ),
                              ),
                            ),
                            Divider(
                              color: packageInfo[i]['packageNoColor'],
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 0),
                              child: Text(
                                packageInfo[i]['title'],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 35,
                                  color: packageInfo[i]['titleColor'],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
