import 'package:astro/widget/custom2_form_filed.dart';
import 'package:astro/widget/custom_button.dart';
import 'package:astro/utils/default_colors.dart';
import 'package:flutter/material.dart';

class KundaliName extends StatefulWidget {
  const KundaliName({super.key});

  @override
  State<StatefulWidget> createState() => KundaliNapeState();
}

class KundaliNapeState extends State<KundaliName> {

  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF8F8F9),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/bg.png"),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  margin: const EdgeInsets.only(top: 50),
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
                        "Kundli",
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
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  //height: MediaQuery.of(context).size.height,
                  margin: const EdgeInsets.only(top: 50),
                  padding: const EdgeInsets.only(top: 45, right: 25, left: 25),
                  decoration: BoxDecoration(
                      color: const Color(0xFFF8F8F9),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                      ),
                      border: Border.all(
                        color: Colors.transparent,
                      )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 5.0, top: 10),
                        child: Text(
                          "Enter Your Name",
                          style: TextStyle(fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(height: 10,),

                      Custom2FormFiled( controller: nameController, keyboardType: TextInputType.name),

                      const SizedBox(
                        height: 120,
                      ),

                      CustomButton(
                          title: "Next",
                          backgroundColor: DefaultColor.yellow,
                          foregroundColor: DefaultColor.black,
                          padding: EdgeInsets.symmetric(
                              horizontal: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.22,
                              vertical: 20),
                          callback: () {
                            Navigator.pushNamed(context, "/kundaligenderi");
                          })
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
