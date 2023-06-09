import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kwekwana/screens/home_landing_screen.dart';

import '../../widgets/backbutton.dart';
import '../bottom_nav_bar_screens.dart';

class ProfilePic extends StatefulWidget {
  const ProfilePic({Key? key}) : super(key: key);

  @override
  State<ProfilePic> createState() => _ProfilePicState();
}

class _ProfilePicState extends State<ProfilePic> {
  File? _image;
  File? _imageBig;
  File? _image1;
  File? _image2;
  File? _image3;
  Future<File?> getImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      _image = File(pickedFile.path);
      return _image!;
    } else {
      print('No image selected.');
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    List<void Function()?> smallImageFunctions = [
      () async {
        _image1 = await getImage();
        setState(() {});
      },
      () async {
        _image2 = await getImage();
        setState(() {});
      },
      () async {
        _image3 = await getImage();
        setState(() {});
      },
    ];
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(235, 235, 235, 1),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35.0, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MyBackButton(
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Column(
                      children: [
                        Text(
                          "Upload profile",
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'picture',
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () async {
                _imageBig = await getImage();
                setState(() {});
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  image: _imageBig != null ? DecorationImage(image: FileImage(_imageBig!), fit: BoxFit.cover) : null,
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 2),
                      blurRadius: 6,
                      color: Color.fromRGBO(200, 200, 200, 1),
                    ),
                  ],
                ),
                width: 180,
                height: 180,
                margin: EdgeInsets.only(top: 15),
                child: _imageBig == null
                    ? Icon(
                        Icons.photo_size_select_actual_outlined,
                        size: 140,
                        color: Color.fromRGBO(235, 235, 235, 1),
                      )
                    : SizedBox.shrink(),
              ),
            ),
            Stack(children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 5),
                child: SvgPicture.asset('images/okwekwana.svg'),
              ),
              Positioned(
                top: 80,
                left: 15,
                right: 15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...List.generate(
                      smallImageFunctions.length,
                      (index) {
                        var image;
                        if (index + 1 == 1) {
                          image = _image1;
                        } else if (index + 1 == 2) {
                          image = _image2;
                        } else if (index + 1 == 3) {
                          image = _image3;
                        }
                        return GestureDetector(
                          onTap: smallImageFunctions[index],
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              image:
                                  image != null ? DecorationImage(image: FileImage(image!), fit: BoxFit.cover) : null,
                            ),
                            child: image == null
                                ? Icon(
                                    Icons.add,
                                    color: Color.fromRGBO(255, 0, 127, 1),
                                    size: 50,
                                  )
                                : SizedBox.shrink(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 190,
                left: 80,
                right: 30,
                child: Container(
                    margin: EdgeInsets.only(top: 5),
                    child: const Text(
                      "Upload three photos of you",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    )),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15, top: 26),
              child: Material(
                elevation: 0.1,
                color: Color.fromRGBO(255, 0, 127, 1),
                borderRadius: BorderRadius.circular(50.0),
                child: MaterialButton(
                  onPressed: () async {
                    if (_imageBig == null || _image1 == null || _image2 == null || _image3 == null) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Photos above are needed')));
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BottomNavBarScreens()),
                      ).then((value) {
                        _imageBig = null;
                        _image1 = null;
                        _image2 = null;
                        _image3 = null;
                      });
                    }
                  },
                  height: 42.0,
                  minWidth: 400,
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
    );
  }
}
