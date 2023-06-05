import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kwekwana/models/chat_message.dart';
import 'package:kwekwana/screens/chat_inbox.dart';

import '../models/notifications_model.dart';
import 'notification_screen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<String> newConns = [
    'images/boys1.jpeg',
    'images/boys2.jpeg',
    'images/girls2.png',
    'images/girls3.jpeg',
    'images/pic2.jpeg',
    'images/girls1.jpeg',
    'images/person_pic.jpeg',
  ];
  List<ChatMessage> chatMessages = [
    ChatMessage(
      messageContent: 'I love music ',
      senderName: 'Juliana Veilo',
      senderImageURL: 'images/girls1.jpeg',
      time: '06:23',
    ),
    ChatMessage(
      messageContent:
          'I love music and I love music and I love music andI love music and I love music and I love music and',
      senderName: 'Jex Da Coolest',
      senderImageURL: 'images/boys2.jpeg',
      time: '06:23',
    ),
    ChatMessage(
      messageContent:
          'I love music and I love music and I love music andI love music and I love music and I love music and',
      senderName: 'Trinity Queen',
      senderImageURL: 'images/person_pic.jpeg',
      time: '06:23',
    ),
    ChatMessage(
      messageContent:
          'I love music and I love music and I love music andI love music and I love music and I love music and',
      senderName: 'Kenzo LoFi',
      senderImageURL: 'images/boys1.jpeg',
      time: '06:23',
    ),
    ChatMessage(
      messageContent:
          'I love music and I love music and I love music andI love music and I love music and I love music and',
      senderName: 'Ammy Bae',
      senderImageURL: 'images/girls2.png',
      time: '06:23',
    ),
    ChatMessage(
      messageContent:
          'I love music and I love music and I love music andI love music and I love music and I love music and',
      senderName: 'Cleofus',
      senderImageURL: 'images/girls3.jpeg',
      time: '06:23',
    ),
    ChatMessage(
      messageContent:
          'I love music and I love music and I love music andI love music and I love music and I love music and',
      senderName: 'Loy Irene',
      senderImageURL: 'images/image1.jpg',
      time: '06:23',
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
                    setState(() {});
                  },
                  child: Text(
                    'Chats',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Color.fromRGBO(255, 0, 127, 1),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen()));
                  },
                  child: Text(
                    'Notifications',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(99, 107, 113, 1),
                      fontSize: 17,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
            child: Text(
              'New Connections',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Color.fromRGBO(255, 0, 127, 1),
              ),
            ),
          ),
          Container(
            height: 80,
            margin: EdgeInsets.only(left: 10),
            child: ListView.builder(
              padding: EdgeInsets.all(0),
              itemCount: newConns.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: 80,
                  margin: EdgeInsets.only(right: 4),
                  decoration: BoxDecoration(
                      // color: Colors.red,
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage(newConns[index]),
                        fit: BoxFit.cover,
                      )),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 15, bottom: 10),
            child: Text(
              'Messages',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Color.fromRGBO(255, 0, 127, 1),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              dragStartBehavior: DragStartBehavior.down,
              itemCount: chatMessages.length,
              padding: EdgeInsets.all(0),
              itemBuilder: (context, index) {
                return NotificationsList(
                  senderName: chatMessages[index].senderName,
                  senderImageURL: chatMessages[index].senderImageURL,
                  messageContent: chatMessages[index].messageContent,
                  time: chatMessages[index].time,
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
  String senderName;
  String senderImageURL;
  String messageContent;
  String time;
  NotificationsList({
    required this.messageContent,
    required this.senderName,
    required this.senderImageURL,
    required this.time,
  });

  @override
  State<NotificationsList> createState() => _NotificationsListState();
}

class _NotificationsListState extends State<NotificationsList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ChatInBox()));
      },
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage(widget.senderImageURL),
                    maxRadius: 32,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                      child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  color: Colors.transparent,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        widget.senderName,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromRGBO(99, 107, 113, 1),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Text(
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        widget.messageContent,
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.grey.shade600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Column(
                                  children: [
                                    Text('6:30 Am'),
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 7),
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(255, 0, 127, 1),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      constraints: const BoxConstraints(
                                          // minWidth: 20,
                                          // minHeight: 20,
                                          ),
                                      child: Text(
                                        '1',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Divider(),
                      ],
                    ),
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
