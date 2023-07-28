import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget/buttom_manu.dart';
import '../widget/custom_radio.dart';
import '../widget/drawer_manu.dart';
import 'user_info_details_page.dart';
import 'package:image_picker/image_picker.dart';

enum Gender { male, female }

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Gender _selectedGender = Gender.male; // Initialize with a default value
  int selectedIndex = 4;

  PickedFile? _imageFile;
  final ImagePicker _picker = ImagePicker();

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerManu(),
      bottomNavigationBar: BottomMenu(
        selectedIndex: selectedIndex,
        onClicked: onClicked,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                margin: EdgeInsets.only(top: 60),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      child: Text(
                        "Profile",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.only(top: 30, right: 30, left: 30),
                decoration: BoxDecoration(
                    color: Color(0xFFF8F8F9),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                    )),
                child: Column(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      child: Stack(
                        children: [
                          Positioned(
                              right: 10,
                              left: 10,
                              top: 10,
                              bottom: 10,
                              child: Container(
                                  height: 130,
                                  width: 130,
                                  child: CircleAvatar(
                                    radius: 80,
                                    backgroundImage: _imageFile == null
                                        ? AssetImage('assets/images/user.png') as ImageProvider<Object>
                                        : FileImage(File(_imageFile!.path)),
                                  )
                                  )),
                          Positioned(
                            top: 15,
                            right: 15,
                            child: InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (context) => bottomsheet());
                              },
                              child: Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Color(0xFF341A9D)),
                                child: Icon(Icons.edit,
                                    color: Colors.white, size: 17),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30),
                        Row(
                          children: <Widget>[
                            Text(
                              "Gender :",
                              style: TextStyle(
                                  color: Colors.black54,
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
                              activeColor: Color(
                                  0xFF341A9D), //FDCE2D Set the active color
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Male',
                              style: TextStyle(
                                color: Colors.black54,
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
                              activeColor: Color(
                                  0xFF341A9D), //FDCE2D Set the active color
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Female',
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),

                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Text(
                            "Name",
                            style:
                                TextStyle(fontSize: 17, color: Colors.black87),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          height: 55,
                          child: TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffD0D0D0), width: 1.2),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffD0D0D0), width: 1.2),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                        ),


                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Text(
                            "Birth Date",
                            style:
                                TextStyle(fontSize: 17, color: Colors.black87),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          height: 55,
                          child: TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffD0D0D0), width: 1.2),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffD0D0D0), width: 1.2),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Text(
                            "Birth Time",
                            style:
                                TextStyle(fontSize: 17, color: Colors.black87),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          height: 55,
                          child: TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffD0D0D0), width: 1.2),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffD0D0D0), width: 1.2),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Text(
                            "Birth Place",
                            style:
                                TextStyle(fontSize: 17, color: Colors.black87),
                          ),
                        ),
                        Container(
                          height: 55,
                          child: TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffD0D0D0), width: 1.2),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffD0D0D0), width: 1.2),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 20, bottom: 20),
                          child:
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/home");
                            },
                            style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width *
                                            0.20,
                                    vertical: 20),
                                elevation: 2,
                                foregroundColor: Color(0xFF000000),
                                backgroundColor: Color(0xFFFDCE2D)),
                            child: Text(
                              "Submit",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    )

                    // ClipOval(
                    //   child: Image.asset('assets/images/profile1.png',
                    //       fit: BoxFit.cover, width: 120, height: 120),
                    // )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomsheet() {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(15),
      child: Column(
        children: [
          Text(
            "Choose Profile Picture",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              TextButton.icon(
                icon: Icon(Icons.camera, color: Colors.grey.shade900),
                onPressed: () {
                  takePhoto(ImageSource.camera);
                  Navigator.pop(context);
                },
                label: Text("Camera",
                    style: TextStyle(color: Colors.grey.shade900)),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.transparent,
                  ),
                  overlayColor: MaterialStateProperty.all<Color>(
                    Colors.transparent,
                  ),
                ),
              ),
              TextButton.icon(
                icon: Icon(Icons.image, color: Colors.grey.shade900),
                onPressed: () {
                  takePhoto(ImageSource.gallery);
                  Navigator.pop(context);
                },
                label: Text("Gallery",
                    style: TextStyle(color: Colors.grey.shade900)),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.transparent,
                  ),
                  overlayColor: MaterialStateProperty.all<Color>(
                    Colors.transparent,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = pickedFile!;
    });
  }
}
