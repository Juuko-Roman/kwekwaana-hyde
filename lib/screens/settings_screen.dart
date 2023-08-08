import 'package:flutter/material.dart';
import 'package:kwekwana/globals/global_vars.dart';
import 'package:kwekwana/screens/edit_profile.dart';
import 'package:kwekwana/screens/payments/packages_available.dart';

import '../globals/confirm_dialog.dart';
import '../providers/loginChecker.dart';
import 'auth/login.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool value = false;
  bool hideId = false;

  @override
  Widget build(BuildContext context) {
    List<List<Map<String, dynamic>>> settingsItems = [
      [
        {
          'name': 'Edit Profile',
          'trailingIcon': Icons.arrow_forward_ios_rounded,
          'onTap': () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile()));
          },
        },
        {'name': 'Change Password', 'trailingIcon': Icons.arrow_forward_ios_rounded, 'onTap': () {}}
      ],
      [
        {'name': 'Language', 'trailingIcon': Icons.arrow_forward_ios_rounded, 'onTap': () {}},
        {'name': 'App Notification', 'trailingIcon': Icons.arrow_forward_ios_rounded, 'onTap': () {}},
        {'name': 'Hide Identity', 'trailingIcon': Icons.arrow_forward_ios_rounded, 'onTap': () {}},
      ],
      [
        {'name': 'Get Help', 'trailingIcon': Icons.arrow_forward_ios_rounded, 'onTap': () {}},
        {'name': 'Terms and Conditions', 'trailingIcon': Icons.arrow_forward_ios_rounded, 'onTap': () {}},
        {'name': 'Privacy Policy', 'trailingIcon': Icons.arrow_forward_ios_rounded, 'onTap': () {}},
      ]
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.keyboard_backspace,
            color: Color.fromRGBO(255, 0, 127, 1),
            size: 30,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Settings',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 8),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              // color: Color.fromRGBO(255, 229, 242, 1),
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage('images/image1.jpg'),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                ...List.generate(
                  settingsItems.length,
                  (index) => Card(
                    child: Column(
                      children: [
                        ...List.generate(
                          settingsItems[index].length,
                          (indexInner) => Padding(
                            padding: const EdgeInsets.only(left: 15.0, right: 15, top: 15, bottom: 15),
                            child: GestureDetector(
                              onTap: settingsItems[index][indexInner]['onTap'],
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    settingsItems[index][indexInner]['name'],
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  index != 2
                                      ? Icon(
                                          settingsItems[index][indexInner]['trailingIcon'],
                                          size: 18,
                                          color: Color.fromRGBO(255, 0, 127, 1),
                                        )
                                      : indexInner != 0
                                          ? Switch(
                                              activeColor: Color.fromRGBO(255, 0, 127, 1),
                                              activeTrackColor: Color.fromRGBO(255, 0, 127, 0.5),
                                              value: value,
                                              onChanged: (value1) {
                                                setState(() {
                                                  this.value = value1;
                                                });
                                              },
                                            )
                                          : Icon(
                                              settingsItems[index][indexInner]['trailingIcon'],
                                              size: 18,
                                              color: Color.fromRGBO(255, 0, 127, 1),
                                            ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Version 0.01',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color.fromRGBO(210, 207, 207, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => PackagesAvailable()));
                          },
                          child: Card(
                            elevation: 4,
                            color: Color.fromRGBO(245, 245, 245, 1),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 28.0),
                                  child: Text(
                                    'Payments',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                        child: Material(
                          elevation: 1.0,
                          color: Color.fromRGBO(245, 245, 245, 1),
                          borderRadius: BorderRadius.circular(50.0),
                          child: MaterialButton(
                            onPressed: () async {
                              if (await confirmDialogue(context, 'Confirm', 'Sure to Log Out?', 'Yes', 'No')) {
                                // ignore: use_build_context_synchronously
                                currentIndex = 0;
                                AuthManager.logoutUser();
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => LoginPage()),
                                );
                              }
                            },
                            minWidth: 350,
                            height: 35.0,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Log Out',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Icon(Icons.logout, size: 18, color: Color.fromRGBO(255, 0, 127, 1)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
