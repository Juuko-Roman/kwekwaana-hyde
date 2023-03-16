import 'package:flutter/material.dart';

class ChatInBox extends StatefulWidget {
  const ChatInBox({Key? key}) : super(key: key);

  @override
  State<ChatInBox> createState() => _ChatInBoxState();
}

class _ChatInBoxState extends State<ChatInBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              padding: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(),
            ),
          )
        ],
      ),
    );
  }
}
