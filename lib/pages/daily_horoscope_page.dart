import 'package:astro/pages/horoscope_details.dart';
import 'package:astro/widget/buttom_manu.dart';
import 'package:astro/widget/drawer_manu.dart';
import 'package:flutter/material.dart';

class DailyHoroscope extends StatefulWidget {
  const DailyHoroscope({Key? key}) : super(key: key);

  @override
  State<DailyHoroscope> createState() => _DailyHoroscopeState();
}

class _DailyHoroscopeState extends State<DailyHoroscope> {
  int selectedIndex = 0;

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
                  image: AssetImage("assets/images/bg.png"), fit: BoxFit.cover)),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                margin: EdgeInsets.only(top: 60),
                child: Row(

                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        child: Icon(Icons.arrow_back_ios, color: Colors.white,),
                      ),
                    ),
                    Spacer(),
                    Container(
                      child:Text(
                        "Daily Horoscope",
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
                padding: EdgeInsets.only(top: 50, right: 30, left: 30),
                decoration: BoxDecoration(
                    color: Color(0xFFF8F8F9),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                    )),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => HoroscopeDetails(image:"assets/images/leo.png",name: "Aries",)));
                          },
                          child: Container(
                            width:
                            MediaQuery.of(context).size.width * 0.26,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xffDDDDDD),
                                    blurRadius: 6.0,
                                    spreadRadius: 2.0,
                                    offset: Offset(0.0, 0.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xFFFFF9EB)),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 25),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/leo.png",
                                  height: 50,
                                  width: 50,
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Text(
                                      "Aries",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
                                    ))
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => HoroscopeDetails(image:"assets/images/virgo.png",name: "Taurus",)));
                          },
                          child: Container(
                            width:
                            MediaQuery.of(context).size.width * 0.26,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xffDDDDDD),
                                    blurRadius: 6.0,
                                    spreadRadius: 2.0,
                                    offset: Offset(0.0, 0.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xFFFFDDD7)),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 25),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/virgo.png",
                                  height: 50,
                                  width: 50,
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Text(
                                      "Taurus",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
                                    ))
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width:
                          MediaQuery.of(context).size.width * 0.26,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xffDDDDDD),
                                  blurRadius: 6.0,
                                  spreadRadius: 2.0,
                                  offset: Offset(0.0, 0.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffd0fff0)),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 25),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/cancer.png",
                                height: 50,
                                width: 50,
                                fit: BoxFit.cover,
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Gemini",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width:
                          MediaQuery.of(context).size.width * 0.26,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xffDDDDDD),
                                  blurRadius: 6.0,
                                  spreadRadius: 2.0,
                                  offset: Offset(0.0, 0.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFE0E6FF)),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 25),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/cancer.png",
                                height: 50,
                                width: 50,
                                fit: BoxFit.cover,
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Cancer",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          width:
                          MediaQuery.of(context).size.width * 0.26,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xffDDDDDD),
                                  blurRadius: 6.0,
                                  spreadRadius: 2.0,
                                  offset: Offset(0.0, 0.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFFFF9EB)),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 25),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/leo.png",
                                height: 50,
                                width: 50,
                                fit: BoxFit.cover,
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Lea",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          width:
                          MediaQuery.of(context).size.width * 0.26,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xffDDDDDD),
                                  blurRadius: 6.0,
                                  spreadRadius: 2.0,
                                  offset: Offset(0.0, 0.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFD4F8FF)),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 25),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/virgo.png",
                                height: 50,
                                width: 50,
                                fit: BoxFit.cover,
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Virgo",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ))
                            ],
                          ),
                        ),


                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width:
                          MediaQuery.of(context).size.width * 0.26,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xffDDDDDD),
                                  blurRadius: 6.0,
                                  spreadRadius: 2.0,
                                  offset: Offset(0.0, 0.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFFFF9EB)),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 25),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/leo.png",
                                height: 50,
                                width: 50,
                                fit: BoxFit.cover,
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Libra",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          width:
                          MediaQuery.of(context).size.width * 0.26,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xffDDDDDD),
                                  blurRadius: 6.0,
                                  spreadRadius: 2.0,
                                  offset: Offset(0.0, 0.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFE0E6FF)),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 25),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/virgo.png",
                                height: 50,
                                width: 50,
                                fit: BoxFit.cover,
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Scorpius",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          width:
                          MediaQuery.of(context).size.width * 0.26,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xffDDDDDD),
                                  blurRadius: 6.0,
                                  spreadRadius: 2.0,
                                  offset: Offset(0.0, 0.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFFFDDD7)),
                          padding: EdgeInsets.symmetric(
                              horizontal: 5, vertical: 25),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/cancer.png",
                                height: 50,
                                width: 50,
                                fit: BoxFit.cover,
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Sagittarius",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Container(
                          width:
                          MediaQuery.of(context).size.width * 0.26,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xffDDDDDD),
                                  blurRadius: 6.0,
                                  spreadRadius: 2.0,
                                  offset: Offset(0.0, 0.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xffd0fff0)),
                          padding: EdgeInsets.symmetric(
                              horizontal: 2, vertical: 25),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/virgo.png",
                                height: 50,
                                width: 50,
                                fit: BoxFit.cover,
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Capricornus",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w700),
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          width:
                          MediaQuery.of(context).size.width * 0.26,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xffDDDDDD),
                                  blurRadius: 6.0,
                                  spreadRadius: 2.0,
                                  offset: Offset(0.0, 0.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFFFF9EB)),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 25),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/leo.png",
                                height: 50,
                                width: 50,
                                fit: BoxFit.cover,
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Aquarius",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          width:
                          MediaQuery.of(context).size.width * 0.26,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xffDDDDDD),
                                  blurRadius: 6.0,
                                  spreadRadius: 2.0,
                                  offset: Offset(0.0, 0.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFD4F8FF)),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 25),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/cancer.png",
                                height: 50,
                                width: 50,
                                fit: BoxFit.cover,
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Pisces",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
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
