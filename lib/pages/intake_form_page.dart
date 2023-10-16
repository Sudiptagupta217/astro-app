import 'package:astro/utils/default_colors.dart';
import 'package:astro/widget/custom2_form_filed.dart';
import 'package:astro/widget/custom_button.dart';
import 'package:flutter/material.dart';

class IntakeForm extends StatefulWidget {
  const IntakeForm({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _IntakeFormState();
}

class _IntakeFormState extends State<IntakeForm> {

  TextEditingController nameController = TextEditingController();
  TextEditingController birthDateController = TextEditingController();
  TextEditingController birthTimeController = TextEditingController();
  TextEditingController birthPlaceController = TextEditingController();

  int selectedIndex = 4;

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
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
                      "Intake Form",
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

              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.only(top: 30, right: 25, left: 25),
                  decoration: const BoxDecoration(
                      color: DefaultColor.bg_color,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Custom2FormFiled(controller: nameController, keyboardType: TextInputType.name,title: "Name",),

                      const SizedBox(height: 15,),

                      Custom2FormFiled(controller: birthDateController, keyboardType: TextInputType.number,title: "Birth Date",),


                      const SizedBox(height: 15,),

                      Custom2FormFiled(controller: birthTimeController, keyboardType: TextInputType.number,title: "Birth Time",),


                      const SizedBox(height: 15,),

                      Custom2FormFiled(controller: birthPlaceController, keyboardType: TextInputType.text,title: "Birth Place",),


                      const Spacer(),

                      Align(
                         alignment: Alignment.bottomCenter,
                        child: CustomButton(title: "Start Call",
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          padding: EdgeInsets.symmetric( horizontal:
                        MediaQuery.of(context).size.width * 0.21,
                            vertical: 20), callback: () {
                          Navigator.pushNamed(context, "/home");
                            },),
                      ),





                    ],
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
