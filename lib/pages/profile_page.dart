import 'dart:io';
import 'package:astro/utils/default_colors.dart';
import 'package:astro/widget/custom_button.dart';
import 'package:flutter/material.dart';
import '../widget/buttom_manu.dart';
import '../widget/custom2_form_filed.dart';
import '../widget/custom_radio.dart';
import '../widget/drawer_manu.dart';
import 'package:image_picker/image_picker.dart';

enum Gender { male, female }

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Gender _selectedGender = Gender.male;
  int selectedIndex = 4;
  TextEditingController nameController = TextEditingController();
  TextEditingController birthDateController = TextEditingController();
  TextEditingController birthTimeController = TextEditingController();
  TextEditingController birthPlaceController = TextEditingController();

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
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                margin: const EdgeInsets.only(top: 60),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      "Profile",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(top: 30),
                padding: const EdgeInsets.only(top: 30, right: 30, left: 30),
                decoration: const BoxDecoration(
                    color: DefaultColor.bg_color,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                    )),
                child: Column(
                  children: [
                    SizedBox(
                      width: 130,
                      height: 130,
                      child: Stack(
                        children: [
                          Positioned(
                              right: 10,
                              left: 10,
                              top: 10,
                              bottom: 10,
                              child: SizedBox(
                                  height: 130,
                                  width: 130,
                                  child: CircleAvatar(
                                    radius: 80,
                                    backgroundImage: _imageFile == null
                                        ? const AssetImage('assets/images/user.png') as ImageProvider<Object>
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
                                    color: DefaultColor.blue),
                                child: const Icon(Icons.edit,
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
                        const SizedBox(height: 30),
                        Row(
                          children: <Widget>[
                            const Text(
                              "Gender :",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                            const SizedBox(width: 20),
                            CustomRadio(
                              value: Gender.male,
                              groupValue: _selectedGender,
                              onChanged: (Gender value) {
                                setState(() {
                                  _selectedGender = value;
                                });
                              },
                              activeColor: DefaultColor.blue
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              'Male',
                              style: TextStyle(
                                color: Colors.black54,
                              ),
                            ),
                            const SizedBox(width: 20),
                            CustomRadio(
                              value: Gender.female,
                              groupValue: _selectedGender,
                              onChanged: (Gender value) {
                                setState(() {
                                  _selectedGender = value;
                                });
                              },
                              activeColor: DefaultColor.blue
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              'Female',
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),

                        Custom2FormFiled(title: 'Name', controller:nameController , keyboardType: TextInputType.name,),

                        const SizedBox(
                          height: 15,
                        ),

                        Custom2FormFiled(title: 'Birth Date', controller:birthDateController , keyboardType: TextInputType.number,),


                        const SizedBox(
                          height: 15,
                        ),

                        Custom2FormFiled(title: 'Birth Time', controller:birthTimeController , keyboardType: TextInputType.number,),


                        const SizedBox(
                          height: 15,
                        ),

                        Custom2FormFiled(title: 'Birth Place', controller:birthPlaceController , keyboardType: TextInputType.text,),


                      Align(
                        alignment: Alignment.bottomCenter,
                        child: CustomButton(title: "Submit",
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.20,vertical: 20),
                          callback: () {
                          Navigator.pushNamed(context, "/home");
                        },),
                      )
                      ],
                    )

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
      margin: const EdgeInsets.all(15),
      child: Column(
        children: [
          const Text(
            "Choose Profile Picture",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
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