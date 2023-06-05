import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kwekwana/globals/global_vars.dart';

import '../models/notifications_model.dart';
import '../widgets/navBarWidget.dart';
import '../widgets/notificationList.dart';
import 'bottom_nav_bar_screens.dart';
import 'chat_screen.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<Notifications> notifications = [
    Notifications(
      notificationContent: 'viewed your profile',
      date: 'May-23-2023',
      time: '06:23',
      imageURL: 'images/girls1.jpeg',
      notifier: 'Scarlet Adams',
    ),
    Notifications(
      notificationContent: 'Liked you',
      date: 'May-23-2023',
      time: '06:23',
      imageURL: 'images/person_pic.jpeg',
      notifier: 'Brandon Lee',
    ),
    Notifications(
      notificationContent: 'Liked you',
      date: 'May-23-2023',
      time: '06:23',
      imageURL: 'images/image1.jpg',
      notifier: 'Annabella Christe',
    ),
    Notifications(
      notificationContent: 'viewed your profile',
      date: 'May-23-2023',
      time: '06:23',
      imageURL: 'images/pic2.jpeg',
      notifier: 'Princess Kayra',
    ),
    Notifications(
      notificationContent: 'Liked you',
      date: 'May-23-2023',
      time: '06:23',
      imageURL: 'images/boys2.jpeg',
      notifier: 'Victor Don',
    ),
    Notifications(
      notificationContent: 'Liked you',
      date: 'May-23-2023',
      time: '06:23',
      imageURL: 'images/boys1.jpeg',
      notifier: 'Richie Richie',
    ),
    Notifications(
      notificationContent: 'viewed your profile',
      date: 'May-23-2023',
      time: '06:23',
      imageURL: 'images/image1.jpg',
      notifier: 'Scarlet',
    ),
    Notifications(
      notificationContent: 'Liked you',
      date: 'May-23-2023',
      time: '06:23',
      imageURL: 'images/boys2.jpeg',
      notifier: 'Victor Don',
    ),
    Notifications(
      notificationContent: 'Liked you',
      date: 'May-23-2023',
      time: '06:23',
      imageURL: 'images/boys1.jpeg',
      notifier: 'Richie Richie',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 45.0, left: 20, right: 20, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Chats',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(99, 107, 113, 1),
                      fontSize: 17,
                    ),
                  ),
                ),
                SizedBox(
                  width: 0,
                ),
                Container(
                  height: 20,
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        color: Color.fromRGBO(99, 107, 113, 1),
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {});
                  },
                  child: Text(
                    'Notifications',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Color.fromRGBO(255, 0, 127, 1),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: notifications.length,
              padding: EdgeInsets.only(top: 16),
              itemBuilder: (context, index) {
                return NotificationsListWidget(
                  notificationContent: notifications[index].notificationContent,
                  date: notifications[index].date,
                  time: notifications[index].time,
                  imageURL: notifications[index].imageURL,
                  notifier: notifications[index].notifier,
                );
              },
            ),
          ),
          BottomNavBar(),
        ],
      ),
    );
  }
}
