import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KundaliGender extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => KundaliGenderState();
}

class KundaliGenderState extends State<KundaliGender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg.png"), fit: BoxFit.cover)),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              margin: EdgeInsets.only(top: 50),
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
                      "Kundli",
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
              margin: EdgeInsets.only(top: 50),
              padding: EdgeInsets.only(top: 35, right: 15, left: 15),
              decoration: BoxDecoration(
                  color: Color(0xFFF8F8F9),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 10),
                    child: Text(
                      "What’s Your Gender",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.27,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset:
                                    Offset(2, 2), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.only(right: 10,left: 10,top: 7,bottom: 7,),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Spacer(),
                                  Icon(Icons.check_box_outline_blank, size: 16, color: Colors.grey,
                                  )
                                ],
                              ),
                              Container(
                                height: 50,
                                  child: Image.asset("assets/images/man.png")),
                              Text("Male",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black54),)
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.27,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset:
                                Offset(2, 2), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.only(right: 10,left: 10,top: 7,bottom: 10,),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Spacer(),
                          Icon(Icons.check_box_outline_blank, size: 16, color: Colors.grey),
                                ],
                              ),
                              Container(
                                  height: 50,
                                  child: Image.asset("assets/images/woman.png")),
                              Text("Female",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black54),)
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.27,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset:
                                Offset(2, 2), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.only(right: 10,left: 10,top: 7,bottom: 10,),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Spacer(),
                          Icon(Icons.check_box_outline_blank, size: 16, color: Colors.grey),
                                ],
                              ),
                              Container(
                                  height: 50,
                                  child: Image.asset("assets/images/outher.png")),
                              Text("Outher",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black54),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 120,
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 20, bottom: 20),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/kundalidate");
                      },
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.22,
                              vertical: 20),
                          elevation: 2,
                          foregroundColor: Color(0xFF000000),
                          backgroundColor: Color(0xFFFDCE2D)),
                      child: Text(
                        "Next",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
