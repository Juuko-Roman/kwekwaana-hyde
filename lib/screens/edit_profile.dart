import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kwekwana/screens/settings_screen.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  Color emaillabelColor = Colors.grey;
  Color namelabelColor = Colors.grey;
  Color passwordlabelColor = Colors.grey;
  Color birthdatelabelColor = Colors.grey;

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
          'Edit Profile',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                // color: Colors.red,
                margin: EdgeInsets.only(bottom: 20, top: 0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Color.fromRGBO(255, 254, 255, 1),
                      Color.fromRGBO(255, 251, 253, 1),
                      Color.fromRGBO(255, 247, 251, 1),
                      Color.fromRGBO(255, 244, 249, 1),
                    ],
                    tileMode: TileMode.mirror,
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 220,
                        child: Stack(
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              padding: EdgeInsets.all(3),
                              margin: EdgeInsets.only(top: 20),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 5,
                                  color: Color.fromRGBO(255, 0, 127, 1),
                                ),
                              ),
                              child: const CircleAvatar(
                                backgroundImage: AssetImage('images/image1.jpg'),
                              ),
                            ),
                            Positioned(
                                bottom: 0,
                                right: 40,
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(255, 0, 127, 1),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Icon(
                                    Icons.edit,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                ))
                          ],
                        ),
                      ),
                      Container(
                        width: 280,
                        margin: EdgeInsets.only(top: 15, bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Scarlet Adams, 23',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Color.fromRGBO(89, 97, 104, 1),
                              ),
                            ),
                            Icon(
                              Icons.verified_user,
                              size: 40,
                              color: Color.fromRGBO(255, 0, 127, 1),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 250,
                        // color: Colors.red,
                        padding: EdgeInsets.only(right: 25),
                        margin: EdgeInsets.only(top: 0, bottom: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.location_on_sharp,
                              size: 35,
                              color: Color.fromRGBO(89, 97, 104, 0.5),
                            ),
                            Text(
                              'Central Kampala, UG',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Color.fromRGBO(89, 97, 104, 0.5),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(7.0),
                        child: TextFormField(
                          cursorColor: Color.fromRGBO(255, 0, 127, 1),
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            labelText: 'Email Address',
                            labelStyle: TextStyle(
                              color: emaillabelColor,
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              emaillabelColor = Color.fromRGBO(255, 0, 127, 1);
                              namelabelColor = Colors.grey;
                              passwordlabelColor = Colors.grey;
                              birthdatelabelColor = Colors.grey;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(7.0),
                        child: TextFormField(
                          cursorColor: Color.fromRGBO(255, 0, 127, 1),
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            labelText: 'User name',
                            labelStyle: TextStyle(
                              color: namelabelColor,
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              namelabelColor = Color.fromRGBO(255, 0, 127, 1);
                              emaillabelColor = Colors.grey;
                              passwordlabelColor = Colors.grey;
                              birthdatelabelColor = Colors.grey;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(7.0),
                        child: TextFormField(
                          cursorColor: Color.fromRGBO(255, 0, 127, 1),
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              color: passwordlabelColor,
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              passwordlabelColor = Color.fromRGBO(255, 0, 127, 1);
                              namelabelColor = Colors.grey;
                              emaillabelColor = Colors.grey;
                              birthdatelabelColor = Colors.grey;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(7.0),
                        child: TextFormField(
                          cursorColor: Color.fromRGBO(255, 0, 127, 1),
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            labelText: 'BirthDate',
                            labelStyle: TextStyle(
                              color: birthdatelabelColor,
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              birthdatelabelColor = Color.fromRGBO(255, 0, 127, 1);
                              passwordlabelColor = Colors.grey;
                              namelabelColor = Colors.grey;
                              emaillabelColor = Colors.grey;
                            });
                          },
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
                              Navigator.pop(context);
                            },
                            minWidth: 350,
                            height: 42.0,
                            child: const Text(
                              'Apply',
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
            ),
          ],
        ),
      ),
    );
  }
}
