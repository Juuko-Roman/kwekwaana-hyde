import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  List<bool> isSelected = [false, false, false];
  double ageSliderValue = 20;
  double distanceSliderValue = 40;
  String selectedGender = 'Girls';

  @override
  Widget build(BuildContext context) {
    if (selectedGender == 'Girls') {
      isSelected[0] = true;
    } else if (selectedGender == 'Boys') {
      isSelected[1] = true;
    } else if (selectedGender == 'None') {
      isSelected[2] = true;
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 1,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Clear All',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
          )
        ],
        title: Text(
          'FilterScreen',
          style: TextStyle(
            fontSize: 16,
            color: Color.fromRGBO(255, 0, 127, 1),
            //
          ),
        ),
        leading: MaterialButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.close,
            color: Colors.black,
            size: 25,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05)
              .copyWith(top: MediaQuery.of(context).size.height * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Interested in',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              ToggleButtons(
                constraints: BoxConstraints(minWidth: (MediaQuery.of(context).size.width - 70) / 3),
                isSelected: isSelected,
                selectedColor: Color.fromRGBO(255, 0, 127, 1),
                color: Colors.white..withOpacity(0.5),
                fillColor: Color.fromRGBO(255, 0, 127, 1),
                borderWidth: 0.5,
                borderColor: Colors.black54,
                selectedBorderColor: Colors.pinkAccent.shade100,
                borderRadius: BorderRadius.circular(10),
                onPressed: (int newIndex) {
                  setState(() {
                    for (int index = 0; index < isSelected.length; index++) {
                      if (index == newIndex) {
                        if (index == 0) {
                          selectedGender = 'Girls';
                        } else if (index == 1) {
                          selectedGender = 'Boys';
                        } else if (index == 2) {
                          selectedGender = 'None';
                        }
                        isSelected[index] = true;
                      } else {
                        isSelected[index] = false;
                      }
                    }
                  });
                },
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Girls',
                      style: TextStyle(color: isSelected[0] ? Colors.white : Colors.black54, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Boys',
                      style: TextStyle(color: isSelected[1] ? Colors.white : Colors.black54, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      child: Text('None',
                          style: TextStyle(color: isSelected[2] ? Colors.white : Colors.black54, fontSize: 16)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Age : ${ageSliderValue.toInt().toString()}',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Slider(
                activeColor: Color.fromRGBO(255, 0, 127, 1),
                value: ageSliderValue,
                min: 18,
                max: 50,
                onChanged: (newValue) {
                  setState(() {
                    ageSliderValue = newValue;
                  });
                },
              ),
              SizedBox(height: 25),
              Text(
                'Distance: ${distanceSliderValue.toInt().toString()}km',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Slider(
                activeColor: Color.fromRGBO(255, 0, 127, 1),
                value: distanceSliderValue,
                min: 1,
                max: 100,
                onChanged: (newValue) {
                  setState(() {
                    distanceSliderValue = newValue;
                  });
                },
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Country',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 50.0),
                child: SizedBox(
                  height: 80,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.4),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                    child: IntlPhoneField(
                      cursorColor: Color.fromRGBO(255, 0, 127, 1),
                      decoration: const InputDecoration(
                        labelText: 'Your country',
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(255, 0, 127, 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(255, 0, 127, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                      initialCountryCode: 'UG',
                      onChanged: (phone) {
                        // Handle phone number changes
                        print(phone);
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 18.0, top: 15),
                child: Material(
                  elevation: 1.0,
                  color: Color.fromRGBO(255, 0, 127, 1),
                  borderRadius: BorderRadius.circular(50.0),
                  child: MaterialButton(
                    onPressed: () async {
                      // context.push('/genderSelection');
                    },
                    minWidth: 350,
                    height: 42.0,
                    child: const Text(
                      'Apply',
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
      ),
    );
  }
}
