import 'package:flutter/material.dart';

import '../models/inbox_message.dart';

class ChatInBox extends StatefulWidget {
  const ChatInBox({Key? key}) : super(key: key);

  @override
  State<ChatInBox> createState() => _ChatInBoxState();
}

class _ChatInBoxState extends State<ChatInBox> {
  List<InboxMessage> messages = [
    InboxMessage(messageContent: "Hello, Will", messageType: "receiver"),
    InboxMessage(messageContent: "How have you been?", messageType: "receiver"),
    InboxMessage(messageContent: "Hey Kriss, I am doing fine dude. wbu?", messageType: "sender"),
    InboxMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    InboxMessage(messageContent: "Is there any thing wrong?", messageType: "sender"),
    InboxMessage(
        messageContent:
            "i am doing fine, thanks for hooking me up i am so glad you have decided to write to me if you dont mind may i know you more possibly starting from where you come from and your age",
        messageType: "receiver"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            elevation: 2,
            margin: EdgeInsets.symmetric(horizontal: 0),
            child: Padding(
              padding: const EdgeInsets.only(left: 8, top: 20, bottom: 0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    tooltip: 'Back',
                    icon: const Icon(
                      Icons.keyboard_backspace_rounded,
                      color: Color.fromRGBO(255, 0, 127, 1),
                      size: 28,
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            child: ListTile(
                              leading: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromRGBO(255, 229, 242, 1),
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage('images/image1.jpg'),
                                ),
                              ),
                              title: Text(
                                'Scarlet Adams',
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 0, 127, 1),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                'Online',
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 0, 127, 1).withOpacity(0.5),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 70,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.videocam_rounded,
                                color: Color.fromRGBO(17, 190, 123, 1),
                              ),
                              Icon(
                                Icons.phone,
                                color: Color.fromRGBO(255, 0, 127, 1),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(),
              child: ListView.builder(
                itemCount: messages.length,
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 0, bottom: 0),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 8, right: 8, top: 10, bottom: 3),
                        child: Align(
                          alignment:
                              (messages[index].messageType == "receiver" ? Alignment.topLeft : Alignment.topRight),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: messages[index].messageType == "receiver"
                                      ? BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                          bottomRight: Radius.circular(10))
                                      : BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10)),
                                  color: (messages[index].messageType == "receiver"
                                      ? Colors.grey.shade200
                                      : Color.fromRGBO(255, 0, 127, 0.7)),
                                ),
                                padding: EdgeInsets.all(16),
                                margin: EdgeInsets.only(bottom: 3),
                                child: Text(
                                  messages[index].messageContent,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: messages[index].messageType != "receiver" ? Colors.white : null,
                                  ),
                                ),
                              ),
                              Text(
                                '06:27',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromRGBO(245, 245, 245, 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 0, 127, 0.15),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(
                      Icons.attachment,
                      color: Color.fromRGBO(255, 0, 127, 1),
                      size: 20,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Type your message",
                        hintStyle: TextStyle(color: Colors.black54, fontSize: 15),
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.send,
                    color: Color.fromRGBO(255, 0, 127, 1),
                    size: 18,
                  ),
                  backgroundColor: Color.fromRGBO(255, 0, 127, 0.15),
                  elevation: 0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
