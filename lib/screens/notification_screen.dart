import 'package:flutter/material.dart';

import '../models/notifications_model.dart';
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
      imageURL: 'images/pic2.jpeg',
      notifier: 'Scarlet',
    ),
    Notifications(
      notificationContent: 'Liked you',
      date: 'May-23-2023',
      time: '06:23',
      imageURL: 'images/person_pic.jpeg',
      notifier: 'Scarlet',
    ),
    Notifications(
      notificationContent: 'Liked you',
      date: 'May-23-2023',
      time: '06:23',
      imageURL: 'images/image1.jpg',
      notifier: 'Scarlet',
    ),
    Notifications(
      notificationContent: 'viewed your profile',
      date: 'May-23-2023',
      time: '06:23',
      imageURL: 'images/pic2.jpeg',
      notifier: 'Scarlet',
    ),
    Notifications(
      notificationContent: 'Liked you',
      date: 'May-23-2023',
      time: '06:23',
      imageURL: 'images/person_pic.jpeg',
      notifier: 'Scarlet',
    ),
    Notifications(
      notificationContent: 'Liked you',
      date: 'May-23-2023',
      time: '06:23',
      imageURL: 'images/image1.jpg',
      notifier: 'Scarlet',
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
      imageURL: 'images/image1.jpg',
      notifier: 'Scarlet',
    ),
    Notifications(
      notificationContent: 'viewed your profile',
      date: 'May-23-2023',
      time: '06:23',
      imageURL: 'images/image1.jpg',
      notifier: 'Scarlet',
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
      imageURL: 'images/image1.jpg',
      notifier: 'Scarlet',
    ),
    Notifications(
      notificationContent: 'viewed your profile',
      date: 'May-23-2023',
      time: '06:23',
      imageURL: 'images/image1.jpg',
      notifier: 'Scarlet',
    ),
    Notifications(
      notificationContent: 'viewed your profile',
      date: 'May-23-2023',
      time: '06:23',
      imageURL: 'images/image1.jpg',
      notifier: 'Scarlet',
    ),
    Notifications(
      notificationContent: 'viewed your profile',
      date: 'May-23-2023',
      time: '06:23',
      imageURL: 'images/image1.jpg',
      notifier: 'Scarlet',
    ),
    Notifications(
      notificationContent: 'viewed your profile',
      date: 'May-23-2023',
      time: '06:23',
      imageURL: 'images/image1.jpg',
      notifier: 'Scarlet',
    ),
    Notifications(
      notificationContent: 'viewed your profile',
      date: 'May-23-2023',
      time: '06:23',
      imageURL: 'images/image1.jpg',
      notifier: 'Scarlet',
    ),
    Notifications(
      notificationContent: 'viewed your profile',
      date: 'May-23-2023',
      time: '06:23',
      imageURL: 'images/image1.jpg',
      notifier: 'Scarlet',
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen()));
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
                return NotificationsList(
                  notificationContent: notifications[index].notificationContent,
                  date: notifications[index].date,
                  time: notifications[index].time,
                  imageURL: notifications[index].imageURL,
                  notifier: notifications[index].notifier,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class NotificationsList extends StatefulWidget {
  String notificationContent;
  String date;
  String time;
  String notifier;
  String imageURL;
  NotificationsList({
    required this.notificationContent,
    required this.date,
    required this.time,
    required this.imageURL,
    required this.notifier,
  });

  @override
  State<NotificationsList> createState() => _NotificationsListState();
}

class _NotificationsListState extends State<NotificationsList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage(widget.imageURL),
                    maxRadius: 35,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: [
                              Text(
                                widget.notifier,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(255, 0, 127, 1),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                widget.notificationContent,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(77, 87, 93, 1),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              Text(
                                widget.date,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                widget.time,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
