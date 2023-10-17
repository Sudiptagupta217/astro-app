import 'package:astro/utils/Custom_Font.dart';
import 'package:astro/widget/buttom_manu.dart';
import 'package:astro/widget/drawer_manu.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../utils/default_colors.dart';
import '../widget/add_card.dart';
import '../widget/popurar_astro_card.dart';
import '../widget/user_feedback.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  int selectedIndex = 0;
  final int ratecount = 5;
  final IconData iconData = Icons.star;
  final List<double> progressValues = [0.6, 0.4, 0.6, 0.8, 1.0];


  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    final int ratecount = 5;
    final IconData iconData = Icons.star;
    CarouselController _carouselController = CarouselController();
    final List<String> images = [
      'assets/images/rectangle.png',
      'assets/images/rectangle.png',
      'assets/images/rectangle.png',
    ];

    final List feedback = [
      {
        "name":"Anonymous",
        "image":"assets/images/profile.png",
        "text":"Amazing astrologer mostly all doubts are clear.",
        "ratecount":5
      },
      {
        "name":"Farnaz",
        "image":"assets/images/profile1.png",
        "text":"Astrologer  gently answered to my questions and shared remedial advise which would create good vibes for marital prosperity with my husband",
        "ratecount":5
      },
    ];

    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      key: _key,
      drawer: DrawerManu(),
      bottomNavigationBar: BottomMenu(
        selectedIndex: selectedIndex,
        onClicked: onClicked,
      ),
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
                padding: const EdgeInsets.symmetric(horizontal: 15),
                margin: const EdgeInsets.only(top: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () => _key.currentState!.openDrawer(),
                      child: const Padding(
                        padding: EdgeInsets.only(right: 8, top: 8),
                        child: Image(
                          image: AssetImage("assets/images/manu.png"),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Hello, Tara",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: Lato,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.02),
                            ),
                            Stack(children: [
                              const Icon(
                                Icons.notifications_none,
                                color: Colors.white,
                              ),
                              Positioned(
                                  top: 0,
                                  right: 0,
                                  child: Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.green,
                                    ),
                                    child: const Center(
                                        child: Text(
                                      "1",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 9),
                                    )),
                                  )),

                            ]),
                          ],
                        ),
                        const Text(
                          "Welcome to Astrology",
                          style: TextStyle(color: Colors.white,fontFamily: Lato,fontSize: 11),
                        ),
                      ],
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/wallet');
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 20),
                        height: 20,
                        width: 20,
                        //child: GestureDetector(
                        child: const Image(
                          image: AssetImage("assets/images/wallet1.png"),
                        ),
                        //  FaIcon(FontAwesomeIcons.wallet,color: Colors.white,size: 20),
                        //),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                padding: const EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width,
                //height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 60,
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: TextField(
                                controller: searchController,
                                decoration: InputDecoration(
                                    hintText: "Search Here",
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    disabledBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    prefixIcon: const Icon(Icons.search,
                                        color: Colors.black54)),
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.42,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: DefaultColor.blue,
                                      // Set the background color
                                      onPrimary: DefaultColor.white,
                                      // Set the text color
                                      elevation: 4.0,
                                      // Set the elevation
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            50.0), // Set the border radius
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 6, vertical: 17.5),
                                      child: Text(
                                        "Daily Horoscope ",
                                        style: TextStyle(fontSize: 15,fontFamily: Raleway,fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.42,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: DefaultColor.green,
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
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 6, vertical: 17.5),
                                      child: Text(
                                        "Live Astrology ",
                                        style: TextStyle(fontSize: 15,fontFamily: Raleway,fontWeight: FontWeight.w600),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10,),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Column(
                              children: [
                                const SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Daily Horoscope",
                                      style: TextStyle(
                                          fontSize: 22,fontFamily: Raleway,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, "/dailyhoroscope");
                                        },
                                        child:  const Text(
                                          "See All",
                                          style: TextStyle(fontSize: 14,fontFamily: Poppins,color: Color(0xff1E1E1E),fontWeight: FontWeight.w500),
                                        )),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 20),
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
                                            color: const Color(0xFFFFF9EB)),
                                        padding: const EdgeInsets.symmetric(
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
                                                    const EdgeInsets.only(top: 10),
                                                child: const Text(
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
                                            color: const Color(0xFFD4F8FF)),
                                        padding: const EdgeInsets.symmetric(
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
                                                    const EdgeInsets.only(top: 10),
                                                child: const Text(
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
                                            color: const Color(0xFFE0E6FF)),
                                        padding: const EdgeInsets.symmetric(
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
                                                    const EdgeInsets.only(top: 10),
                                                child: const Text(
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
                    ),

                    const SizedBox(height: 40),

                    Stack(
                      children: [
                        Container(
                          height: 200,
                          color: Colors.white,
                        ),
                        Positioned(
                          right: 25,
                          left: 25,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 180,
                            child: Image.asset("assets/images/rectangle.png",
                                fit: BoxFit.fill),
                          ),
                        ),
                        Positioned(
                          top: 160,
                          bottom: 2,
                          child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              height: 150,
                              child: Center(
                                child: SizedBox(
                                    width: 200,
                                    child: Row(
                                      children: [
                                        Expanded(
                                            flex: 1,
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.pushNamed(
                                                    context, "/astro_call");
                                              },
                                              child: Container(
                                                height: 150,
                                                decoration: const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                20)),
                                                    color: Colors.blue),
                                                child: const Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(Icons.call,
                                                        color: Colors.white,
                                                        size: 17),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                      "Call",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 14),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            )),
                                        const SizedBox(width: 20),
                                        Expanded(
                                            flex: 1,
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.pushNamed(
                                                    context, "/astro_chat");
                                              },
                                              child: Container(
                                                height: 150,
                                                decoration: const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                20)),
                                                    color: Colors.green),
                                                child: const Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(Icons.sms_outlined,
                                                        color: Colors.white,
                                                        size: 17),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                      "Chat",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 14),
                                                    )
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
                      margin: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                              flex: 1,
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, "/kundali");
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      margin:
                                          const EdgeInsets.symmetric(horizontal: 25),
                                      height: 100,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xFFCFE7DA),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Image.asset(
                                          "assets/images/kundli.png",
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      "Kundali",
                                      style: TextStyle(
                                          fontSize: 14,fontFamily: Poppins,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, "/matchmakingboy");
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 25),
                                      height: 100,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xFFFFE5EA),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Image.asset(
                                            "assets/images/match.png"),
                                      ),
                                    ),
                                    const Text(
                                      "Match Making",
                                      style: TextStyle(
                                          fontSize: 14,fontFamily: Poppins,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, "/shubhmuhurat");
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 25),
                                      height: 100,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xFFF5EAFB),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Image.asset(
                                            "assets/images/shubh.png"),
                                      ),
                                    ),
                                    const Text(
                                      "Shubh Muhurat",
                                      style: TextStyle(
                                          fontSize: 14,fontFamily: Poppins,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),

                    //Most Popular
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Most Popular",
                                  style: TextStyle(
                                      fontSize: 22,fontFamily: Raleway,
                                      fontWeight: FontWeight.w800),
                                ),
                                GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, "/astrologers_list");
                                    },
                                    child: const Text(
                                      "See All",
                                      style: TextStyle(fontSize: 14,fontFamily: Poppins,color: Color(0xff1E1E1E),fontWeight: FontWeight.w500),
                                    )),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 270,
                            child: ListView.builder(
                              itemCount: 4,
                              scrollDirection: Axis.horizontal,
                              // physics: NeverScrollableScrollPhysics(),
                              // shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return popuralAstroCard(
                                    image: 'assets/images/astro_dp.png',
                                    rating: '5',
                                    type: "Palm Reader",
                                    name: "Astro Vivek K",
                                    rate: "30/min",
                                    callback: () {});
                              },
                            ),
                          )
                        ],
                      ),
                    ),

                    //Trending Consultations
                    Container(
                        margin: const EdgeInsets.only(top: 20),
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xFF492771), Color(0xFF341A9D)],
                              begin: FractionalOffset(0.2, 1.0),
                              end: FractionalOffset(1.5, 0.1),
                              stops: [0.0, 1.3],
                              tileMode: TileMode.clamp),
                        ),
                        child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.54,
                                  padding: const EdgeInsets.only(
                                      left: 25, top: 30, bottom: 30),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.pushNamed(context,
                                              "/trendingconsultations");
                                        },
                                        child: const Text(
                                          "Trending Consultations",
                                          style: TextStyle(
                                              fontSize: 22,fontFamily: Raleway,
                                              fontWeight: FontWeight.w800,
                                              color: Color(0xFFFFFFFF)),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        "Astrology is a language, If you want to understand this language ,speak to us !",
                                        style: TextStyle(
                                            fontSize: 14,
                                            height: 1.8,fontFamily: Poppins,
                                            color: Color(0xFFFFFFFF)),
                                      ),
                                      const SizedBox(
                                        height: 60,
                                      ),
                                      const Text(
                                        "Swipe ",
                                        style: TextStyle(
                                            fontSize: 16,fontFamily: Poppins,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFFFFFFFF)),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 15, top: 30, bottom: 30),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image(
                                        image: const AssetImage(
                                            "assets/images/health1.png"),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.40,
                                        fit: BoxFit.cover,
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text(
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
                                  padding: const EdgeInsets.only(
                                      left: 15, top: 30, bottom: 30, right: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image(
                                        image: const AssetImage(
                                            "assets/images/education.png"),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.40,
                                        fit: BoxFit.cover,
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text(
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
                            ))),

                    //add container
                    Container(
                      margin: const EdgeInsets.only(top: 20, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          AddCard(
                            text: '100% Money Back Guarantee',
                            color: 0xFF03D1FD,
                            width: MediaQuery.of(context).size.width * 0.30,
                          ),
                          AddCard(
                            text: 'Verified Astrologer',
                            color: 0xFF749FFE,
                            width: MediaQuery.of(context).size.width * 0.30,
                          ),
                          AddCard(
                            text: '100% Privacy',
                            color: 0xFFFE9A7C,
                            width: MediaQuery.of(context).size.width * 0.30,
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
                                return SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: Image.asset(
                                    image,
                                    fit: BoxFit.fill,
                                  ),
                                );
                              },
                            );
                          }).toList(),
                          options: CarouselOptions(
                            height: 175,
                            autoPlay: true,
                            enlargeCenterPage: true,
                            aspectRatio: 16 / 9,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enableInfiniteScroll: true,
                            autoPlayAnimationDuration:
                                const Duration(milliseconds: 2000),
                            autoPlayInterval:
                                const Duration(milliseconds: 7000),
                            viewportFraction: 0.9,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _currentIndex = index;
                              });
                            },
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: images.map((image) {
                            int index = images.indexOf(image);
                            return Container(
                              width: 10,
                              height: 2,
                              margin: const EdgeInsets.symmetric(horizontal: 4),
                              decoration: BoxDecoration(
                                color: index == _currentIndex
                                    ? Colors.black
                                    : Colors.grey,
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),

                    //Traning Videos
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Traning Videos",
                                  style: TextStyle(
                                      fontSize: 22,fontFamily: Raleway,
                                      fontWeight: FontWeight.w800),
                                ),
                                GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, "/videos");
                                    },
                                    child: const Text(
                                      "See All",
                                      style: TextStyle(fontSize: 14,fontFamily: Poppins,color: Color(0xff1E1E1E),fontWeight: FontWeight.w500),
                                    )),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 215,
                            child: ListView.builder(
                              itemCount: 2,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                    height: 185,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    margin: const EdgeInsets.only(
                                        left: 15, bottom: 20, top: 10),
                                    child: Image.asset(
                                      "assets/images/videos1.png",
                                      fit: BoxFit.fill,
                                    ));
                              },
                            ),
                          )
                        ],
                      ),
                    ),

                    //Blog Widget
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Blogs",
                                  style: TextStyle(
                                      fontSize: 22,fontFamily: Raleway,
                                      fontWeight: FontWeight.w800),
                                ),
                                GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, "/blog");
                                    },
                                    child: const Text(
                                      "See All",
                                      style: TextStyle(fontSize: 14,fontFamily: Poppins,color: Color(0xff1E1E1E),fontWeight: FontWeight.w500),
                                    )),
                              ],
                            ),
                          ),
                          Stack(
                            children: [
                              SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  height: 250),
                              Positioned(
                                bottom: 50,
                                left: 20,
                                top: 10,
                                right: 20,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset('assets/images/blog.png',
                                      height: 250, fit: BoxFit.cover),
                                ),
                              ),
                              Positioned(
                                  bottom: 20,
                                  left: 30,
                                  right: 30,
                                  child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 75,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color: Color(0xFF341A9D),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: ExpandableText(
                                          "Lorem ipsum dolor sit amet, conseteturcxd sadipscing elitr, sed diam nonumy eirmoder tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
                                          maxLines: 3,
                                          expandText: 'Read more',
                                          collapseText: 'Read less',
                                          linkStyle: TextStyle(
                                            color: Color(0xffF8BD02),
                                          ),
                                          // specify the text alignment
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                              height: 1.3,
                                              wordSpacing:
                                                  1), // specify the text style
                                        ),
                                      )))
                            ],
                          ),
                        ],
                      ),
                    ),

                    //Feedback
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            blurRadius: 10,
                            spreadRadius: 2,
                            offset: Offset(0, 4), // Offset to apply shadow at the bottom
                          ),
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            blurRadius: 10,
                            spreadRadius: 20,
                            offset: Offset(0, -2), // Offset to apply shadow at the bottom
                          ),
                        ],
                      ),
                      child:  Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width*0.40,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Feedbacks",
                                      style: TextStyle(
                                          fontFamily: "Raleway",
                                          fontSize: 19, fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(height: 15,),
                                    Container(
                                      height: 45,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Text("$ratecount",style: TextStyle(fontSize: 45,fontFamily: "Inter",fontWeight: FontWeight.w500),),
                                          Text("/5",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                                        ],
                                      ),
                                    ),

                                    SizedBox(height: 15,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: List.generate(
                                        ratecount,
                                            (index) => Icon(iconData,color: DefaultColor.yellow,size: 17,),
                                      ),
                                    ),
                                    Text("350 Ratings",style: TextStyle(fontSize: 14,color: Color(0xffb3b3b3)),)


                                  ],
                                ),
                              ),


                              Container(
                                  width: MediaQuery.of(context).size.width*0.5,
                                  child: Column(
                                    children: List.generate(
                                      progressValues.length,
                                          (index) => buildProgressWidget(index),
                                    ),
                                  )
                              )
                            ],
                          ),


                          ListView.builder(
                            itemCount: feedback.length,
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                            return UserFeedback(userName: feedback[index]['name'],
                              userimage: feedback[index]['image'],
                              text: feedback[index]['text'],
                              ratecount: feedback[index]["ratecount"],);
                          },)


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
  Widget buildProgressWidget(int index) {
    double progress = progressValues[index];
    int number = progressValues.length - index;

    return Row(

      mainAxisAlignment: MainAxisAlignment.end,
      children: [

        Text(
          number.toString(),
          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 10,height: 30,),
        Container(
          width: MediaQuery.of(context).size.width*0.4,
          height: 12,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(5),
          ),
          child: FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: progress,
            child: Container(
              decoration: BoxDecoration(
                color: DefaultColor.yellow,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),

      ],
    );
  }
}
