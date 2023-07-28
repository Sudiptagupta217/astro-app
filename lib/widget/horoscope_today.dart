import 'package:flutter/material.dart';

class HoroscopeToday extends StatefulWidget {
  const HoroscopeToday({Key? key}) : super(key: key);

  @override
  State<HoroscopeToday> createState() => _HoroscopeTodayState();
}

class _HoroscopeTodayState extends State<HoroscopeToday> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(

          children: [
            DefaultTabController(
                length: 7,
                child: SizedBox(

                  child: Column(

                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 5),
                        child: TabBar(
                          isScrollable: true,
                          labelColor: Colors.white,


                          tabs: <Widget>[
                            Tab(
                              child: Container(
                                width: 60,
                                height: 80,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12))),
                                child: Icon(
                                  Icons.person_rounded,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12))),
                                child: Icon(
                                  Icons.business_center,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12))),
                                child: Icon(
                                  Icons.monetization_on_rounded,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12))),
                                child: Icon(
                                  Icons.heart_broken_rounded,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12))),
                                child: Icon(
                                  Icons.school_sharp,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12))),
                                child: Icon(
                                  Icons.energy_savings_leaf,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12))),
                                child: Icon(
                                  Icons.person_rounded,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                          unselectedLabelColor: Colors.black,
                          indicator: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              color: Colors.black),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.5,
                        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                        child: TabBarView(
                          children: <Widget>[

                            Container(
                              child: Center(
                                child: Text("1"),
                              ),
                            ),

                            Container(

                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Career", style: TextStyle(fontWeight: FontWeight.w700,
                                        fontSize: 22),),
                                    SizedBox(height: 10,),
                                    
                                    Text("There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
                                    style: TextStyle(
                                      fontSize: 15,
                                        color: Color(0xff6b6b6b),
                                      fontWeight: FontWeight.w400,
                                      height: 1.6
                                    ),
                                    )
                                  ],
                                ),

                            ),
                            
                            
                            

                            Container(
                              child: Center(
                                child: Text("2"),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text("3"),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text("4"),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text("5"),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: Text("6"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
