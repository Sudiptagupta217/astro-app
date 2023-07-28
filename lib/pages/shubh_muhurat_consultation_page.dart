import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShubhMuhurat extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ShubhMuhuratState();
}

class ShubhMuhuratState extends State<ShubhMuhurat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        "Shubh Muhurat Consultation",
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
                padding: EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                    color: Color(0xFFF8F8F9),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 20, left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "Enter Date & Location to find Muhurat in Panchang",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600)),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text(
                              "Date",
                              style:
                                  TextStyle(fontSize: 17, color: Colors.black87),
                            ),
                          ),
                          SizedBox(height: 3,),
                          Container(
                            height: 55,
                            child:
                            TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 17),
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xffD0D0D0), width: 1.2),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xffD0D0D0), width: 1.2),
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
                              "Location",
                              style:
                                  TextStyle(fontSize: 17, color: Colors.black87),
                            ),
                          ),
                          SizedBox(height: 3,),
                          Container(
                            height: 55,
                            child: TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 17),
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xffD0D0D0), width: 1.2),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xffD0D0D0), width: 1.2),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(top: 30),
                            child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, "/shubhmuhuratdetails");
                              },
                              style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                          MediaQuery.of(context).size.width *
                                              0.21,
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
                      ),
                    ),

                    Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(top: 30),
                        padding: EdgeInsets.only(right: 20, left: 20,top: 10),
                        color: Color(0xFFFFF0BE),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(" Shubh Muhurat Today",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),

                            Padding(
                              padding: const EdgeInsets.only(top: 8.0,bottom: 8,right: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/om.png"),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 12,left: 8,bottom: 8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Monday, 24  April 2023",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xFF341A9D)),),
                                        SizedBox(height: 10,),
                                        Text("Abhijit Muhurat",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),),
                                        SizedBox(height: 3,),
                                        Text("11:37:00 AM to 12:27:00 PM",style: TextStyle(fontSize: 14,color:Colors.black54),),

                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )




                          ],
                        )),

                    Container(
                      padding: EdgeInsets.only(right: 20, left: 20,top: 20,bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Muhurat in Panchang",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),
                          SizedBox(height: 5,),
                          Text("Shubh Muhurat, or auspicious time, in Panchang is that time duration in which planets and constellations shower good or fruitful results for the native. There are thirty auspicious moments in a single day during which a native should begin an important task in order to yield successful results. The purpose of pertaining to Shubh Muhurat is to attain meaningful outcomes of important events. In simple words, beginning any auspicious activity only during the suggested auspicious time is known as Muhurat.",style: TextStyle(fontSize: 14,color:Colors.black54),),
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
