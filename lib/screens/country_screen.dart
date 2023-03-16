import 'package:flutter/material.dart';

class CountryScreen extends StatefulWidget {
  const CountryScreen({Key? key}) : super(key: key);

  @override
  State<CountryScreen> createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {
  List<String> countries = [
    'Algeria',
    'Angora',
    'Benin',
    'Botswana',
    'Burkina Faso',
    'Burundi',
    'Kenya',
    'Uganda',
    'Tanzania'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(89, 97, 104, 1),
        padding: EdgeInsets.only(top: 30),
        child: Card(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          Icons.close,
                          size: 28,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Country',
                      style: TextStyle(
                        color: Color.fromRGBO(89, 97, 104, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.all(0),
                  itemCount: countries.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${countries[index]}',
                              style: TextStyle(
                                color: Color.fromRGBO(89, 97, 104, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Divider(),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 18.0, top: 15),
                child: Material(
                  elevation: 1.0,
                  color: Color.fromRGBO(255, 83, 169, 1),
                  borderRadius: BorderRadius.circular(50.0),
                  child: MaterialButton(
                    onPressed: () async {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
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
      ),
    );
  }
}
