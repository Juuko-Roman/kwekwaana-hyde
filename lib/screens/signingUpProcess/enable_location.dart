import 'package:flutter/material.dart';
import '../../services/location_settings.dart';
import '../../widgets/confirmation_button.dart';
import 'country_screen.dart';

class EnableLocation extends StatefulWidget {
  const EnableLocation({Key? key}) : super(key: key);

  @override
  State<EnableLocation> createState() => _EnableLocationState();
}

class _EnableLocationState extends State<EnableLocation> {
  ActualLocation MyLocation = ActualLocation();
  bool showMoreDetails = true;
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
              Color.fromRGBO(254, 249, 252, 1),
              Color.fromRGBO(253, 242, 248, 1),
              Color.fromRGBO(251, 216, 234, 1),
              Color.fromRGBO(251, 216, 234, 1),
            ], // Gradient from https://learnui.design/tools/gradient-generator.html
            tileMode: TileMode.mirror,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            showMoreDetails
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Enable Location',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Color.fromRGBO(89, 97, 104, 1),
                        ),
                      ),
                    ],
                  )
                : SizedBox.shrink(),
            showMoreDetails
                ? Container(
                    margin: EdgeInsets.only(top: 10, bottom: 20),
                    width: 250,
                    child: const Text(
                      'Grant access to your location in order to use okwekwana app',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(153, 150, 154, 1),
                      ),
                    ),
                  )
                : SizedBox.shrink(),
            showMoreDetails
                ? Stack(
                    children: [
                      Container(
                        width: 250,
                        height: 250,
                        margin: EdgeInsets.only(bottom: 40),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(254, 242, 248, 1),
                          borderRadius: BorderRadius.circular(150),
                        ),
                      ),
                      const Positioned(
                        top: 0,
                        left: 20,
                        child: Icon(
                          Icons.location_on_sharp,
                          color: Color.fromRGBO(255, 0, 127, 1),
                          size: 210,
                        ),
                      ),
                    ],
                  )
                : SizedBox.shrink(),
            showMoreDetails
                ? Padding(
                    padding: const EdgeInsets.only(bottom: 58.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          showMoreDetails = false;
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'More details',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(153, 150, 154, 1),
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: Color.fromRGBO(153, 150, 154, 1),
                          ),
                        ],
                      ),
                    ),
                  )
                : SizedBox.shrink(),
            !showMoreDetails
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        showMoreDetails = true;
                      });
                    },
                    child: Icon(
                      Icons.keyboard_arrow_down_outlined,
                      size: 30,
                      color: Color.fromRGBO(153, 150, 154, 1),
                    ))
                : SizedBox.shrink(),
            !showMoreDetails
                ? Container(
                    width: MediaQuery.of(context).size.width * 0.88,
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          Color.fromRGBO(254, 251, 255, 1),
                          Color.fromRGBO(253, 238, 246, 1),
                        ], // Gradient from https://learnui.design/tools/gradient-generator.html
                        tileMode: TileMode.mirror,
                      ),
                    ),
                    margin: EdgeInsets.only(bottom: 10, top: 10),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 80.0),
                          child: Text(
                            'Meet people around you',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Color.fromRGBO(89, 97, 104, 1),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 20),
                          width: 250,
                          child: const Text(
                            'Your location will be used to show you potential matches near you',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromRGBO(153, 150, 154, 1),
                              fontSize: 16,
                              height: 1.3,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                : SizedBox.shrink(),
            ConfirmationButton(
              text: 'Enable Location',
              textColor: Color.fromRGBO(130, 136, 149, 1),
              color: Colors.white,
              onPressed: () async {
                MyLocation.getActualLocation(context).then((value) {
                  print('vaue is $value');
                  if (value != "not allowed" && value != 'not allowed for good') {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CountryScreen()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Location not enabled')));
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
