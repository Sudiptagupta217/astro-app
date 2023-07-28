import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widget/custom_radio.dart';

enum Gender { male, female }

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => DetailsPageState();
}

class DetailsPageState extends State<DetailsPage> {

  Gender _selectedGender = Gender.male; // Initialize with a default value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
         height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"),
                  fit: BoxFit.cover)),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 55,
                ),

                Center(
                  child: Image(
                    image: AssetImage(
                      "assets/images/app_logo.png",
                    ),
                    width: 125,
                    height: 140,
                  ),
                ),

                SizedBox(
                  height: 50,
                ),

                Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Enter Your Details",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    )),

                Row(
                  children: <Widget>[
                    Text(
                      "Gender :",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                    SizedBox(width: 20),
                    CustomRadio(
                      value: Gender.male,
                      groupValue: _selectedGender,
                      onChanged: (Gender value) {
                        setState(() {
                          _selectedGender = value;
                        });
                      },
                      activeColor:
                          Color(0xFFFDCE2D), //FDCE2D Set the active color
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Male',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 20),
                    CustomRadio(
                      value: Gender.female,
                      groupValue: _selectedGender,
                      onChanged: (Gender value) {
                        setState(() {
                          _selectedGender = value;
                        });
                      },
                      activeColor:
                          Color(0xFFFDCE2D), //FDCE2D Set the active color
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Female',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),

                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    filled: true,
                    fillColor: Color(0x1AFFFFFF),
                    hintText: "First Name",
                    hintStyle: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0x1AFFFFFF), width: 1),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0x1AFFFFFF), width: 1),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    focusColor: Color(0xFFFFFFFF),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    filled: true,
                    fillColor: Color(0x1AFFFFFF),
                    hintText: "Last Name",
                    hintStyle: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0x1AFFFFFF), width: 1),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0x1AFFFFFF), width: 1),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    focusColor: Color(0xFFFFFFFF),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    filled: true,
                    fillColor: Color(0x1AFFFFFF),
                    hintText: "DOB",
                    hintStyle: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0x1AFFFFFF), width: 1),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0x1AFFFFFF), width: 1),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    focusColor: Color(0xFFFFFFFF),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    filled: true,
                    fillColor: Color(0x1AFFFFFF),
                    hintText: "Place Of Birth",
                    hintStyle: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0x1AFFFFFF), width: 1),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0x1AFFFFFF), width: 1),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    focusColor: Color(0xFFFFFFFF),
                  ),
                ),

                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 40,bottom: 20),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/home");
                    },
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.20,
                            vertical: 21),
                        elevation: 2,
                        foregroundColor: Color(0xFF000000),
                        backgroundColor: Color(0xFFFDCE2D)),
                    child: Text(
                      "Submit",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}