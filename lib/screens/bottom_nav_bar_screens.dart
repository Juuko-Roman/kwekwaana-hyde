import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../globals/global_vars.dart';
import '../services/firebase_crud.dart';
import 'filter.dart';
import 'home_landing_screen.dart';
import 'package:kwekwana/screens/chat_screen.dart';
import 'package:kwekwana/screens/people_matches.dart';
import 'package:kwekwana/screens/profile.dart';
import 'package:firebase_storage/firebase_storage.dart';

class BottomNavBarScreens extends StatefulWidget {
  const BottomNavBarScreens({Key? key}) : super(key: key);

  @override
  State<BottomNavBarScreens> createState() => _BottomNavBarScreensState();
}

class _BottomNavBarScreensState extends State<BottomNavBarScreens> {
  FirebaseCrudServices firebase = FirebaseCrudServices();
  List spotLightPeople = [
    {
      'name': 'Raymond V',
      'imageUrl': 'images/boys1.jpeg',
    },
    {
      'name': 'Rasta Cleeve',
      'imageUrl': 'images/boys2.jpeg',
    },
    {
      'name': 'Cool Bae',
      'imageUrl': 'images/girls2.png',
    },
    {
      'name': 'Princess Ray',
      'imageUrl': 'images/girls3.jpeg',
    },
    {
      'name': 'Scarlet',
      'imageUrl': 'images/pic2.jpeg',
    },
    {
      'name': 'Pretty Sharuah',
      'imageUrl': 'images/girls1.jpeg',
    },
    {
      'name': 'Jojo Queen',
      'imageUrl': 'images/person_pic.jpeg',
    },
  ];
  final List<Widget> _children = [HomeLandingScreen(), ChatScreen(), Profile()];

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final FirebaseStorage storage = FirebaseStorage.instance;
  File? _imageFile;
  var pickedFile;

  String? _uploadedImageUrl;

  // Function to pick an image from the device gallery
  Future<void> _pickImage() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;
    PlatformFile pickedToFile = result.files.first;
    pickedFile = pickedToFile;

    setState(() {
      _imageFile = File(pickedFile.path);
    });
  }

  // Function to upload the image to Firebase Storage
  Future<void> _uploadImage() async {
    await _pickImage();
    try {
      if (_imageFile == null) {
        print('No image selected');
        return;
      }

      final imagePath = 'userImages/${pickedFile.name}';
      final Reference storageRef = storage.ref().child('images/${DateTime.now()}.png');
      final UploadTask uploadTask = storageRef.putFile(_imageFile!);

      uploadTask.snapshotEvents.listen((TaskSnapshot snapshot) {
        print('Upload progress: ${snapshot.bytesTransferred}/${snapshot.totalBytes}');
      }, onError: (Object e) {
        print('Upload error: $e');
      });

      await uploadTask.whenComplete(() async {
        final url = await storageRef.getDownloadURL();
        setState(() {
          _uploadedImageUrl = url;
        });
        print('Image uploaded successfully');
      });
    } catch (e) {
      print('Failed to upload image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTabTapped,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(
          color: Color.fromRGBO(255, 0, 127, 1),
        ),
        selectedItemColor: Color.fromRGBO(255, 0, 127, 1),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on_sharp,
              color: Color.fromRGBO(255, 0, 127, 1),
            ),
            label: "Feed",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.solidComments,
              color: Color.fromRGBO(255, 0, 127, 1),
            ),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Color.fromRGBO(255, 0, 127, 1),
            ),
            label: "Profile",
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Container(
          //   height: 300,
          //   child: StreamBuilder<QuerySnapshot>(
          //     stream: firebase.getUsers(),
          //     builder: (context, snapshot) {
          //       if (!snapshot.hasData) {
          //         return Center(
          //           child: CircularProgressIndicator(),
          //         );
          //       }
          //
          //       List<QueryDocumentSnapshot> documents = snapshot.data!.docs;
          //
          //       return ListView.builder(
          //         itemCount: documents.length,
          //         itemBuilder: (context, index) {
          //           final user = jsonDecode(jsonEncode(documents[index].data()));
          //           return ListTile(
          //             title: Text(user['name']),
          //             subtitle: Text(user['email']),
          //             trailing: IconButton(
          //               icon: Icon(Icons.delete),
          //               onPressed: () => firebase.deleteUser(documents[index].id),
          //             ),
          //           );
          //         },
          //       );
          //     },
          //   ),
          // ),
          currentIndex != 1 && currentIndex != 2
              ? Padding(
                  padding: const EdgeInsets.only(top: 28.0, left: 20, right: 20, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => PeopleMatches()));
                        },
                        child: const Text(
                          'Matches',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(99, 107, 113, 1),
                            fontSize: 17,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 0,
                      ),
                      Container(
                        height: 20,
                        decoration: const BoxDecoration(
                          border: Border(
                            right: BorderSide(
                              color: Color.fromRGBO(99, 107, 113, 1),
                              width: 1.0,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: const Text(
                              'New Members',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Color.fromRGBO(255, 0, 127, 1),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => FilterScreen()));
                            },
                            child: const Icon(
                              Icons.filter_list_sharp,
                              size: 30,
                              color: Color.fromRGBO(255, 0, 127, 1),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              : SizedBox.shrink(),
          currentIndex != 1 && currentIndex != 2
              ? const Padding(
                  padding: EdgeInsets.only(left: 10.0, bottom: 10),
                  child: Text(
                    'Spotlight',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(99, 107, 113, 1),
                      fontSize: 12,
                    ),
                  ),
                )
              : SizedBox.shrink(),
          currentIndex != 1 && currentIndex != 2
              ? Container(
                  height: 67,
                  // color: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  margin: EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () async {
                          // firebase.createUser('John Doe', 'johndoe@example.com');
                          // firebase.updateUser("sNV3hPqvTaOG1P5EM7L2", "Brenda", "Namata");
                          // firebase.deleteUser("sNV3hPqvTaOG1P5EM7L2");
                          // print(firebase.getUsers());
                          await _uploadImage();

                          // Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen()));
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  // color: Color.fromRGBO(255, 229, 242, 1),
                                ),
                                child: const CircleAvatar(
                                  backgroundColor: Color.fromRGBO(255, 229, 242, 1),
                                  child: Icon(
                                    Icons.add,
                                    size: 25,
                                    color: Color.fromRGBO(255, 0, 127, 1),
                                  ),
                                ),
                              ),
                              const Text(
                                'Add me',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color.fromRGBO(99, 107, 113, 1),
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: spotLightPeople.length,
                          itemBuilder: (context, index) => Padding(
                            padding: EdgeInsets.only(right: 10.0),
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color.fromRGBO(255, 229, 242, 1),
                                      ),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(spotLightPeople[index]['imageUrl']),
                                    ),
                                  ),
                                  Text(
                                    spotLightPeople[index]['name'],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color.fromRGBO(99, 107, 113, 1),
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : SizedBox.shrink(),
          Expanded(
            child: _children[currentIndex],
          )
        ],
      ),
    );
  }
}
