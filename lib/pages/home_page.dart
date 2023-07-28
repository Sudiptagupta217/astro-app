import 'package:astro/widget/buttom_manu.dart';
import 'package:astro/widget/drawer_manu.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  int selectedIndex = 0;

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    CarouselController _carouselController = CarouselController();
    final List<String> images = [
      'assets/images/rectangle.png',
      'assets/images/rectangle.png',
      'assets/images/rectangle.png',
    ];
    
    return Scaffold(
      key: _key, // A
      drawer: DrawerManu(),
      // endDrawer: DrawerManu(),
      bottomNavigationBar: BottomMenu(
        selectedIndex: selectedIndex,
        onClicked: onClicked,
      ),

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
                padding: EdgeInsets.symmetric(horizontal: 15),
                margin: EdgeInsets.only(top: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () => _key.currentState!.openDrawer(),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8, top: 8),
                        child: Image(
                          image: AssetImage("assets/images/manu.png"),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, Tara",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.02),
                        ),
                        Text(
                          "Welcome to Astrology",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Spacer(),
                    InkWell(
                       onTap: () {
                         Navigator.pushNamed(context, '/wallet');
                       },
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        height: 20,
                        width: 20,
                        //child: GestureDetector(
                        child:
                         Image(image: AssetImage("assets/images/wallet1.png"),),
                      //  FaIcon(FontAwesomeIcons.wallet,color: Colors.white,size: 20),
                        //),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width,
                //height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Column(
                        children: [
                          Container(
                            height:60,
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: TextField(
                                // enabled: false,
                                decoration: InputDecoration(
                                    hintText: "Search",
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    disabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    prefixIcon: Icon(Icons.search,
                                        color: Colors.black54)),
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(width: MediaQuery.of(context).size.width * 0.42,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xff341A9D),
                                      // Set the background color
                                      onPrimary: Colors.white,
                                      // Set the text color
                                      elevation: 4.0,
                                      // Set the elevation
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            50.0), // Set the border radius
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 6, vertical: 17.5),
                                      child: Text(
                                        "Daily Horoscope ",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    )),
                              ),




                              Container(width: MediaQuery.of(context).size.width * 0.42,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xff30B900),
                                      // Set the background color
                                      onPrimary: Colors.white,
                                      // Set the text color
                                      elevation: 4.0,
                                      // Set the elevation
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            30.0), // Set the border radius
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 6, vertical: 17.5),
                                      child: Text(
                                        "Live Astrology ",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Column(
                              children: [
                                SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Daily Horoscope",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, "/dailyhoroscope");
                                        },
                                        child: Text(
                                          "See All",
                                          style: TextStyle(fontSize: 14),
                                        )),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.27,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
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
                                                margin:
                                                    EdgeInsets.only(top: 10),
                                                child: Text(
                                                  "Lea",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ))
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.27,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
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
                                                margin:
                                                    EdgeInsets.only(top: 10),
                                                child: Text(
                                                  "Virgo",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ))
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.27,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
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
                                                margin:
                                                    EdgeInsets.only(top: 10),
                                                child: Text(
                                                  "Cancer",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ))
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),

                    SizedBox(height: 40),

                    Stack(
                      children: [
                        Container(
                          height: 200,
                          color: Colors.white,
                        ),
                        Positioned(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 180,
                            child: Image.asset("assets/images/rectangle.png"),
                          ),
                        ),
                        Positioned(
                          top: 160,
                          bottom: 2,
                          child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 150,
                              child: Center(
                                child: Container(
                                    width: 200,
                                    child: Row(
                                      children: [

                                        Expanded(
                                            flex: 1,
                                            child:
                                                InkWell(
                                                  onTap: () {
                                                    Navigator.pushNamed(context, "/astro_call");
                                                  },
                                                  child: Container(
                                                    height: 150,
                                                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.blue),
                                                     child: Row(
                                                       mainAxisAlignment: MainAxisAlignment.center,
                                                       children: [
                                                         Icon(Icons.call,color: Colors.white,size: 17),
                                                         SizedBox(width: 5,),
                                                         Text("Call",style: TextStyle(color: Colors.white,fontSize: 14),)
                                                       ],
                                                     ),
                                                      ),
                                                )
                                        ),

                                        SizedBox(width: 20),

                                        Expanded(
                                            flex: 1,
                                            child:
                                                InkWell(
                                                  onTap: () {
                                                    Navigator.pushNamed(context,"/astro_chat");
                                                  },
                                                  child: Container(
                                                    height: 150,
                                                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.green),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Icon(Icons.sms_outlined,color: Colors.white,size: 17),
                                                        SizedBox(width: 5,),
                                                        Text("Chat",style: TextStyle(color: Colors.white,fontSize: 14),)
                                                      ],
                                                    ),
                                                  ),
                                                )),
                                      ],
                                    )),
                              )),
                        ),
                      ],
                    ),

                    //Kundali & Matching Making & Shubh Muhurat
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                              flex: 1,
                              child: InkWell(
                               onTap: () {Navigator.pushNamed(context, "/kundali");},
                                child: Column(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 25),
                                      height: 100,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xFFCFE7DA),
                                      ),
                                      child:
                                          Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: Image.asset("assets/images/kundli.png",),
                                          ),
                                    ),
                                    Text("Kundali",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)
                                  ],
                                ),
                              )),

                          Expanded(
                              flex: 1,
                              child: InkWell(
                                onTap: () {Navigator.pushNamed(context, "/matchmakingboy");},
                                child: Column(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 25),
                                      height: 100,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xFFFFE5EA),
                                      ),
                                      child:
                                          Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: Image.asset("assets/images/match.png"),
                                          ),
                                    ),
                                    Text("Match Making",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)
                                  ],
                                ),
                              )),

                          Expanded(
                              flex: 1,
                              child:InkWell(
                                onTap: () {Navigator.pushNamed(context, "/shubhmuhurat");},
                                child: Column(
                                  children: [
                                  Container(
                                  margin: EdgeInsets.symmetric(horizontal: 25),
                                  height: 100,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFFF5EAFB),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Image.asset("assets/images/shubh.png"),
                                  ),
                                  ),
                                  Text("Shubh Muhurat",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)

                                ],),
                              )
                              ),


                        ],
                      ),
                    ),

                    //Most Popular
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Most Popular",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w800),
                                ),
                                GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, "/astrologers_list");
                                    },
                                    child: Text(
                                      "See All",
                                      style: TextStyle(fontSize: 14),
                                    )),
                              ],
                            ),
                          ),
                          Container(
                              child: SingleChildScrollView(
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 30, bottom: 20, top: 20),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.38,
                                        padding:
                                            EdgeInsets.symmetric(vertical: 20),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0xffDDDDDD),
                                                blurRadius: 6.0,
                                                spreadRadius: 2.0,
                                                offset: Offset(0.0, 0.0),
                                              )
                                            ],
                                            color: Colors.white),
                                        child: Column(
                                          children: [
                                            Center(
                                              child: Stack(
                                                children: [
                                                  Image.asset(
                                                    "assets/images/astro_dp.png",
                                                    height: 90,
                                                    width: 90,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  Positioned(
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 20,
                                                              vertical: 3),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50),
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Color(
                                                                0xffDDDDDD),
                                                            blurRadius: 6.0,
                                                            spreadRadius: 2.0,
                                                            offset: Offset(
                                                                0.0, 0.0),
                                                          )
                                                        ],
                                                      ),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color: Color(
                                                                0xffffce31),
                                                          ),
                                                          Text("5")
                                                        ],
                                                      ),
                                                    ),
                                                    bottom: 0,
                                                    left: 11,
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Text(
                                              "Astro Vivek K",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 8),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.currency_rupee,
                                                    size: 15,
                                                    color: Color(0xff341a9d),
                                                  ),
                                                  Text("30/min")
                                                ],
                                              ),
                                            ),
                                            Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 30,
                                                    vertical: 12),
                                                decoration: BoxDecoration(
                                                    color: Color(0xff341a9d),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50)),
                                                child: Text(
                                                  "Connect",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                  ),
                                                ))
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 15, bottom: 20, top: 20),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.38,
                                        padding:
                                            EdgeInsets.symmetric(vertical: 20),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0xffDDDDDD),
                                                blurRadius: 6.0,
                                                spreadRadius: 2.0,
                                                offset: Offset(0.0, 0.0),
                                              )
                                            ],
                                            color: Colors.white),
                                        child: Column(
                                          children: [
                                            Center(
                                              child: Stack(
                                                children: [
                                                  Image.asset(
                                                    "assets/images/astro_dp.png",
                                                    height: 90,
                                                    width: 90,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  Positioned(
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 20,
                                                              vertical: 3),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50),
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Color(
                                                                0xffDDDDDD),
                                                            blurRadius: 6.0,
                                                            spreadRadius: 2.0,
                                                            offset: Offset(
                                                                0.0, 0.0),
                                                          )
                                                        ],
                                                      ),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color: Color(
                                                                0xffffce31),
                                                          ),
                                                          Text("5")
                                                        ],
                                                      ),
                                                    ),
                                                    bottom: 0,
                                                    left: 11,
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Text(
                                              "Astro Vivek K",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 8),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.currency_rupee,
                                                    size: 15,
                                                    color: Color(0xff341a9d),
                                                  ),
                                                  Text("30/min")
                                                ],
                                              ),
                                            ),
                                            Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 30,
                                                    vertical: 12),
                                                decoration: BoxDecoration(
                                                    color: Color(0xff341a9d),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50)),
                                                child: Text(
                                                  "Connect",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                  ),
                                                ))
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 15, bottom: 20, top: 20),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.38,
                                        padding:
                                            EdgeInsets.symmetric(vertical: 20),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0xffDDDDDD),
                                                blurRadius: 6.0,
                                                spreadRadius: 2.0,
                                                offset: Offset(0.0, 0.0),
                                              )
                                            ],
                                            color: Colors.white),
                                        child: Column(
                                          children: [
                                            Center(
                                              child: Stack(
                                                children: [
                                                  Image.asset(
                                                    "assets/images/astro_dp.png",
                                                    height: 90,
                                                    width: 90,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  Positioned(
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 20,
                                                              vertical: 3),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50),
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Color(
                                                                0xffDDDDDD),
                                                            blurRadius: 6.0,
                                                            spreadRadius: 2.0,
                                                            offset: Offset(
                                                                0.0, 0.0),
                                                          )
                                                        ],
                                                      ),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color: Color(
                                                                0xffffce31),
                                                          ),
                                                          Text("5")
                                                        ],
                                                      ),
                                                    ),
                                                    bottom: 0,
                                                    left: 11,
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Text(
                                              "Astro Vivek K",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 8),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.currency_rupee,
                                                    size: 15,
                                                    color: Color(0xff341a9d),
                                                  ),
                                                  Text("30/min")
                                                ],
                                              ),
                                            ),
                                            Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 30,
                                                    vertical: 12),
                                                decoration: BoxDecoration(
                                                    color: Color(0xff341a9d),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50)),
                                                child: Text(
                                                  "Connect",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                  ),
                                                ))
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: 15,
                                            bottom: 20,
                                            top: 20,
                                            right: 30),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.38,
                                        padding:
                                            EdgeInsets.symmetric(vertical: 20),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0xffDDDDDD),
                                                blurRadius: 6.0,
                                                spreadRadius: 2.0,
                                                offset: Offset(0.0, 0.0),
                                              )
                                            ],
                                            color: Colors.white),
                                        child: Column(
                                          children: [
                                            Center(
                                              child: Stack(
                                                children: [
                                                  Image.asset(
                                                    "assets/images/astro_dp.png",
                                                    height: 90,
                                                    width: 90,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  Positioned(
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 20,
                                                              vertical: 3),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50),
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Color(
                                                                0xffDDDDDD),
                                                            blurRadius: 6.0,
                                                            spreadRadius: 2.0,
                                                            offset: Offset(
                                                                0.0, 0.0),
                                                          )
                                                        ],
                                                      ),
                                                      child: Row(
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color: Color(
                                                                0xffffce31),
                                                          ),
                                                          Text("5")
                                                        ],
                                                      ),
                                                    ),
                                                    bottom: 0,
                                                    left: 11,
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Text(
                                              "Astro Vivek K",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 8),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.currency_rupee,
                                                    size: 15,
                                                    color: Color(0xff341a9d),
                                                  ),
                                                  Text("30/min")
                                                ],
                                              ),
                                            ),
                                            Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 30,
                                                    vertical: 12),
                                                decoration: BoxDecoration(
                                                    color: Color(0xff341a9d),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50)),
                                                child: Text(
                                                  "Connect",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                  ),
                                                ))
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  scrollDirection: Axis.horizontal))
                        ],
                      ),
                    ),

                    //Trending Consultations
                    Container(
                        margin: EdgeInsets.only(top: 20),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xFF492771), Color(0xFF341A9D)],
                              begin: const FractionalOffset(0.2, 1.0),
                              end: const FractionalOffset(1.5, 0.1),
                              stops: [0.0, 1.3],
                              tileMode: TileMode.clamp),
                        ),
                        child: SingleChildScrollView(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.48,
                                  padding: EdgeInsets.only(
                                      left: 25, top: 30, bottom: 30),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        onTap:(){
                                          Navigator.pushNamed(context, "/trendingconsultations");
                                        },
                                        child: Text(
                                          "Trending Consultations",
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w800,
                                              color: Color(0xFFFFFFFF)),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Astrology is a language, If you want to understand this language ,speak to us !",
                                        style: TextStyle(
                                            fontSize: 14,
                                            height: 1.8,
                                            color: Color(0xFFFFFFFF)),
                                      ),
                                      SizedBox(
                                        height: 60,
                                      ),
                                      Text(
                                        "Swipe ",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFFFFFFFF)),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 15, top: 30, bottom: 30),
                                  child: Column(
                                    crossAxisAlignment:CrossAxisAlignment.start,
                                    children: [
                                      Image(image: AssetImage("assets/images/health1.png"),
                                        width: MediaQuery.of(context).size.width * 0.40,
                                        fit: BoxFit.cover,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Health ",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFFFFFFFF)),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      left: 15, top: 30, bottom: 30, right: 15),
                                  child: Column(
                                    crossAxisAlignment:CrossAxisAlignment.start,
                                    children: [
                                      Image(
                                        image: AssetImage(
                                            "assets/images/education.png"),
                                        width:
                                        MediaQuery.of(context).size.width *
                                            0.40,
                                        fit: BoxFit.cover,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Education ",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFFFFFFFF)),
                                      ),
                                    ],
                                  ),
                                )
                                
                              ],
                            ),
                            scrollDirection: Axis.horizontal)),

                    //add container
                    Container(
                      margin: EdgeInsets.only(top: 20,bottom: 20),
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                        children: [
                         
                          Container(
                            width: MediaQuery.of(context).size.width * 0.30,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(20),
                                color: Color(0xFF03D1FD)),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 25),
                            child: Center(
                              child: Text("100% Money Back Guarantee",textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.30,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(20),
                                color: Color(0xFF749FFE)),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 25),
                            child: Center(
                              child: Text("Verified Astrologer",textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.30,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(20),
                                color: Color(0xFFFE9A7C)),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 25),
                            child: Center(
                              child: Text("100% Privacy",textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                    ),

                    //scroll Slider
                    Column(
                      children: [
                        CarouselSlider(
                          carouselController: _carouselController,
                          items: images.map((image) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: Image.asset(image),
                                );
                              },
                            );
                          }).toList(),
                          options: CarouselOptions(
                            height: 175,
                           // autoPlay: true,
                            enlargeCenterPage: true,
                            aspectRatio: 16 / 9,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enableInfiniteScroll: true,
                            autoPlayAnimationDuration: Duration(milliseconds: 800),
                            viewportFraction: 0.8,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _currentIndex = index;
                              });
                            },
                            
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: images.map((image) {
                            int index = images.indexOf(image);
                            return Container(
                              width: 10,
                              height: 2,
                              margin: EdgeInsets.symmetric(horizontal: 4),
                              decoration: BoxDecoration(
                                color: index == _currentIndex ? Colors.black : Colors.grey,
                              ),
                            );
                          }).toList(),
                        ),

                      ],
                    ),

                    //Traning Videos
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Traning Videos",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w800),
                                ),
                                GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, "/videos");
                                    },
                                    child: Text(
                                      "See All",
                                      style: TextStyle(fontSize: 14),)
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children:<Widget> [
                                  Container(
                                    height: 185,
                                      width: MediaQuery.of(context).size.width * 0.8,
                                     margin: EdgeInsets.only(left: 15, bottom: 20, top: 10),
                                      child:Container(child: Image.asset("assets/images/videos1.png" , fit: BoxFit.fill,),)
                                  ),
                                  Container(
                                      height: 185,
                                       width: MediaQuery.of(context).size.width * 0.8,
                                        margin: EdgeInsets.only(left: 10, bottom: 20, top: 10,right:10),
                                      child:Container(child: Image.asset("assets/images/videos1.png" , fit: BoxFit.fill,),)
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                    //Blog Widget
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Blogs",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w800),
                                ),
                                GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, "/blog");
                                    },
                                    child: Text(
                                      "See All",
                                      style: TextStyle(fontSize: 14),)
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children:<Widget> [

                                  Stack(
                                    children: [
                                      Container(width: MediaQuery.of(context).size.width, height: 250),
                                      Positioned(
                                        bottom: 50,
                                        left: 20,
                                        top: 10,
                                        right: 20,
                                        child:
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(20),
                                          child: Image.asset('assets/images/blog.png',height: 250,fit: BoxFit.cover),
                                        ),
                                      ),

                                      Positioned(
                                        bottom: 20,
                                        left: 30,
                                        right: 30,
                                        child: Container(
                                          width: MediaQuery.of(context).size.width,
                                          height: 75,
                                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Color(0xFF341A9D),
                                          ),
                                          child:Padding(
                                            padding: const EdgeInsets.all(12.0),
                                            child: 
                                            ExpandableText(
                                              "Lorem ipsum dolor sit amet, conseteturcxd sadipscing elitr, sed diam nonumy eirmoder tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
                                              maxLines: 3,
                                              expandText: 'Read more',
                                              collapseText: 'Read less',
                                              linkStyle:TextStyle(color:Color(0xffF8BD02),),
                                              // specify the text alignment
                                              style: TextStyle(fontSize: 14,color: Colors.white,height: 1.3,wordSpacing: 1), // specify the text style
                                          ),
                                            
                                            
                                      )
                                        )
                                      )
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                    
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
