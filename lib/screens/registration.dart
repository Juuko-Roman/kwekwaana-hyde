import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 38.0),
                child: Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MaterialButton(onPressed: (){},
                      child: Padding(
                        padding: const EdgeInsets.only(),
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                    SizedBox(width: 50),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        'Register',
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                  child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/photo.jpeg'),
              )),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 28.0),
                    child: Text(
                      'ScarletAdams,',
                      style: TextStyle(color: Colors.black54, fontSize: 25,fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text('23',style: TextStyle(color: Colors.black54, fontSize: 25)),
                  Icon(Icons.shield,color: Colors.pink,),
                ],),
              ),
              SizedBox(height: 20,),
              SizedBox(width: 280,
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'First Name'),
                ),
              ),
              SizedBox(width: 280,
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Second Name'),
                ),
              ),
              SizedBox(width: 280,
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Age'),
                ),
              ),
              SizedBox(width: 250,
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Country'),
                ),
              ),
              SizedBox(width: 280,
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'city'),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: SizedBox(height: 30,width: 150,
                  child: MaterialButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    color: Colors.pink,
                    child: Text(
                      'Apply',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
