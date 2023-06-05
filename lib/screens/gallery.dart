import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  List<ImageDetails> _images = [
    ImageDetails(imagePath: 'images/image1.jpg'),
    ImageDetails(imagePath: 'images/image1.jpg'),
    ImageDetails(imagePath: 'images/image1.jpg'),
    ImageDetails(imagePath: 'images/image1.jpg'),
    ImageDetails(imagePath: 'images/image1.jpg'),
    ImageDetails(imagePath: 'images/image1.jpg'),
    ImageDetails(imagePath: 'images/image1.jpg'),
    ImageDetails(imagePath: 'images/image1.jpg'),
    ImageDetails(imagePath: 'images/image1.jpg'),
    ImageDetails(imagePath: 'images/image1.jpg'),
    ImageDetails(imagePath: 'images/image1.jpg'),
    ImageDetails(imagePath: 'images/image1.jpg'),
    ImageDetails(imagePath: 'images/image1.jpg')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Text(
            'Gallery',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: _images.length,
                itemBuilder: (context, index) {
                  return RawMaterialButton(
                    onPressed: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(_images[index].imagePath),
                            fit: BoxFit.cover,
                          )),
                    ),
                  );
                }),
          ))
        ],
      )),
    );
  }
}

class ImageDetails {
  final String imagePath;
  ImageDetails({required this.imagePath});
}
