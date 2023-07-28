import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget/buttom_manu.dart';
import '../widget/drawer_manu.dart';

class PlanetaryTransit extends StatefulWidget {
  const PlanetaryTransit({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => PlanetaryTransitState();
}

class PlanetaryTransitState extends State<PlanetaryTransit> {
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
        child:  Container(
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
                        "Planetary Transit",
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
                padding: EdgeInsets.only(top: 30, right: 20, left: 20),
                decoration: BoxDecoration(
                    color: Color(0xFFF8F8F9),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                    )
                ),
                child:
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 160,
                        ),


                        Positioned(
                          top: 27,
                          left: 2,
                          right: 2,
                          bottom: 2,
                          child: Container(
                            padding: EdgeInsets.only(top: 20,left: 65,right: 10),
                            width: MediaQuery.of(context).size.width,
                            height: 130,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(
                                0xfff2deda),),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Jupiter Transit",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                                SizedBox(height: 10,),
                                Text("Know the impact of Guru transit, expect great changes, profits and fulfillment of desire. ",maxLines: 4,
                                style: TextStyle(fontSize: 15)),

                              ],
                            ),
                          ),
                        ),

                        Positioned(
                          left: 9,
                          child: Container(
                            width: 70,
                            height: 165,
                            child: Column(
                              children: [
                                ClipRRect
                                  (borderRadius: BorderRadius.circular(50),child: Image.asset('assets/images/jupiter.png')),
                              ],
                            ),
                          ),
                        )


                      ],
                    ),
                    SizedBox(height: 10,),
                    Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 160,
                        ),


                        Positioned(
                          top: 27,
                          left: 2,
                          right: 2,
                          bottom: 2,
                          child: Container(
                            padding: EdgeInsets.only(top: 20,left: 65,right: 10),
                            width: MediaQuery.of(context).size.width,
                            height: 130,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xffDAF2F1),),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Jupiter Transit",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                                SizedBox(height: 10,),
                                Text("Know the impact of Guru transit, expect great changes, profits and fulfillment of desire. ",maxLines: 4,
                                    style: TextStyle(fontSize: 15)),

                              ],
                            ),
                          ),
                        ),

                        Positioned(
                          left: 9,
                          child: Container(
                            width: 70,
                            height: 165,
                            child: Column(
                              children: [
                                ClipRRect
                                  (borderRadius: BorderRadius.circular(50),child: Image.asset('assets/images/venus.png')),
                              ],
                            ),
                          ),
                        )


                      ],
                    ),
                    SizedBox(height: 10,),
                    Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 160,
                        ),


                        Positioned(
                          top: 27,
                          left: 2,
                          right: 2,
                          bottom: 2,
                          child: Container(
                            padding: EdgeInsets.only(top: 20,left: 65,right: 10),
                            width: MediaQuery.of(context).size.width,
                            height: 130,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(
                                0xffdae6f2),),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Jupiter Transit",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                                SizedBox(height: 10,),
                                Text("Know the impact of Guru transit, expect great changes, profits and fulfillment of desire. ",maxLines: 4,
                                    style: TextStyle(fontSize: 15)),

                              ],
                            ),
                          ),
                        ),

                        Positioned(
                          left: 9,
                          child: Container(
                            width: 70,
                            height: 165,
                            child: Column(
                              children: [
                                ClipRRect
                                  (borderRadius: BorderRadius.circular(50),child: Image.asset('assets/images/jupiter.png')),
                              ],
                            ),
                          ),
                        )


                      ],
                    ),
                    SizedBox(height: 10,),
                    Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 160,
                        ),


                        Positioned(
                          top: 27,
                          left: 2,
                          right: 2,
                          bottom: 2,
                          child: Container(
                            padding: EdgeInsets.only(top: 20,left: 65,right: 10),
                            width: MediaQuery.of(context).size.width,
                            height: 130,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(
                                0xfff2dada),),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Jupiter Transit",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                                SizedBox(height: 10,),
                                Text("Know the impact of Guru transit, expect great changes, profits and fulfillment of desire. ",maxLines: 4,
                                    style: TextStyle(fontSize: 15)),

                              ],
                            ),
                          ),
                        ),

                        Positioned(
                          left: 9,
                          child: Container(
                            width: 70,
                            height: 165,
                            child: Column(
                              children: [
                                ClipRRect
                                  (borderRadius: BorderRadius.circular(50),child: Image.asset('assets/images/venus.png')),
                              ],
                            ),
                          ),
                        )


                      ],
                    ),
                    SizedBox(height: 10,),

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
