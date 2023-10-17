import 'package:astro/widget/custom_button.dart';
import 'package:astro/utils/default_colors.dart';
import 'package:flutter/material.dart';

class KundaliGender extends StatefulWidget {
  const KundaliGender({super.key});

  @override
  State<StatefulWidget> createState() => KundaliGenderState();
}

class KundaliGenderState extends State<KundaliGender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
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
                  margin: const EdgeInsets.only(top: 50),
                  padding: const EdgeInsets.only(top: 35, right: 15, left: 15),
                  decoration: BoxDecoration(
                      color: DefaultColor.bg_color,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                      ),
                    border: Border.all(color: Colors.transparent)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10.0, top: 10),
                        child: Text(
                          "What’s Your Gender",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.27,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.4),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset:
                                    const Offset(2, 2), // changes position of shadow
                                  ),
                                ],
                                color: Colors.white,
                              ),
                              padding: const EdgeInsets.only(
                                right: 10, left: 10, top: 7, bottom: 7,),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  const Row(
                                    children: [
                                      Spacer(),
                                      Icon(
                                        Icons.check_box_outline_blank, size: 16,
                                        color: Colors.grey,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                      height: 50,
                                      child: Image.asset(
                                          "assets/images/man.png")),
                                  const Text("Male", style: TextStyle(fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black54),)
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.27,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.4),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset:
                                    const Offset(2, 2), // changes position of shadow
                                  ),
                                ],
                                color: Colors.white,
                              ),
                              padding: const EdgeInsets.only(
                                right: 10, left: 10, top: 7, bottom: 10,),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  const Row(
                                    children: [
                                      Spacer(),
                                      Icon(Icons.check_box_outline_blank,
                                          size: 16, color: Colors.grey),
                                    ],
                                  ),
                                  SizedBox(
                                      height: 50,
                                      child: Image.asset(
                                          "assets/images/woman.png")),
                                  const Text("Female", style: TextStyle(fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black54),)
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.27,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.4),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset:
                                    const Offset(2, 2), // changes position of shadow
                                  ),
                                ],
                                color: Colors.white,
                              ),
                              padding: const EdgeInsets.only(
                                right: 10, left: 10, top: 7, bottom: 10,),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  const Row(
                                    children: [
                                      Spacer(),
                                      Icon(Icons.check_box_outline_blank,
                                          size: 16, color: Colors.grey),
                                    ],
                                  ),
                                  SizedBox(
                                      height: 50,
                                      child: Image.asset(
                                          "assets/images/outher.png")),
                                  const Text("Outher", style: TextStyle(fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black54),)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 120,
                      ),
                      CustomButton(
                        title: "Next",
                        foregroundColor: DefaultColor.black,
                        backgroundColor: DefaultColor.yellow,
                        margin: EdgeInsets.symmetric(vertical: 25),
                        padding: EdgeInsets.symmetric(horizontal:
                      MediaQuery
                          .of(context)
                          .size
                          .width * 0.22,
                          vertical: 19), callback: () {
                        Navigator.pushNamed(context, "/kundalidate");
                      },)
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
