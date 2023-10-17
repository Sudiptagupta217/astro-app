import 'package:astro/utils/default_colors.dart';
import 'package:flutter/material.dart';

import '../utils/Custom_Font.dart';

class ShubhMuhuratDetails extends StatefulWidget {
  const ShubhMuhuratDetails({super.key});

  @override
  State<StatefulWidget> createState() => ShubhMuhuratDetailsState();
}

class ShubhMuhuratDetailsState extends State<ShubhMuhuratDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
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
                      "Shubh Muhurat Consultation",
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
                decoration: const BoxDecoration(
                    color: DefaultColor.bg_color,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFFFFF0BE),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width,
                        //  margin: EdgeInsets.only(top: 30),
                        padding: const EdgeInsets.only(right: 20, left: 20, top: 27),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              " Shubh Muhurat Today",
                              style: TextStyle(fontSize: 17,fontFamily: Raleway, fontWeight: FontWeight.w600),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 8.0, bottom: 8, right: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/om.png"),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        top: 12, left: 8, bottom: 8),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Monday, 24  April 2023",
                                          style: TextStyle(
                                              fontSize: 16,fontFamily: Inter,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF341A9D)),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Abhijit Muhurat",
                                          style: TextStyle(
                                              fontSize: 16,fontFamily: Inter,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black),
                                        ),
                                        SizedBox(height: 3,),
                                        Text(
                                          "11:37:00 AM to 12:27:00 PM",
                                          style: TextStyle(
                                              fontSize: 14,fontFamily: Inter,
                                              color: Colors.black54),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
                    Container(
                      padding: const EdgeInsets.only(right: 20, left: 20,top: 20,bottom: 20),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Muhurat in Panchang",style: TextStyle(fontSize: 17,fontFamily: Raleway,fontWeight: FontWeight.w600),),
                          SizedBox(height: 5,),
                          Text("Shubh Muhurat, or auspicious time, in Panchang is that time duration in which planets and constellations shower good or fruitful results for the native. There are thirty auspicious moments in a single day during which a native should begin an important task in order to yield successful results. The purpose of pertaining to Shubh Muhurat is to attain meaningful outcomes of important events. In simple words, beginning any auspicious activity only during the suggested auspicious time is known as Muhurat.",style: TextStyle(fontSize: 14,fontFamily: Raleway,color:Colors.black54),),
                        ],
                      ),
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
}