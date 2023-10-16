import 'package:astro/utils/default_colors.dart';
import 'package:astro/widget/custom_button.dart';
import 'package:astro/widget/custom_form_filed.dart';
import 'package:flutter/material.dart';
import '../widget/custom_radio.dart';

enum Gender { male, female }

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => DetailsPageState();
}

class DetailsPageState extends State<DetailsPage> {

  Gender _selectedGender = Gender.male;
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController placeNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
         height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"),
                  fit: BoxFit.cover)),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 55,
                ),

                const Center(
                  child: Image(
                    image: AssetImage(
                      "assets/images/app_logo.png",
                    ),
                    width: 125,
                    height: 140,
                  ),
                ),

                const SizedBox(
                  height: 50,
                ),

                Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: const Text(
                      "Enter Your Details",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    )),

                Row(
                  children: <Widget>[
                    const Text(
                      "Gender :",
                      style: TextStyle(
                          color: Colors.white,
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
                      activeColor:
                           DefaultColor.yellow,
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      'Male',
                      style: TextStyle(
                        color: Colors.white,
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
                      activeColor: DefaultColor.yellow,
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      'Female',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 10,
                ),

               CustomFormFiled(controller: firstNameController, hintText: "First Name", keyboardType: TextInputType.text),

                const SizedBox(
                  height: 10,
                ),

                CustomFormFiled(controller: lastNameController, hintText: "Last Name", keyboardType: TextInputType.text),

                const SizedBox(
                  height: 10,
                ),

                CustomFormFiled(controller: dobController, hintText: "DOB", keyboardType: TextInputType.text),


                const SizedBox(
                  height: 10,
                ),

                CustomFormFiled(controller: placeNameController,hintText: "Place of Birth", keyboardType: TextInputType.text),

                CustomButton(title: "Submit",
                  margin: const EdgeInsets.only(top: 20),
                  padding: EdgeInsets.symmetric(vertical: 21,
                      horizontal: MediaQuery.of(context).size.width*0.20),
                  callback: () {
                  Navigator.pushNamed(context, "/home");
                },)
              ],
            ),
          ),
        ),
      ),
    );
  }
}