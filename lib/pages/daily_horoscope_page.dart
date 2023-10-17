import 'package:astro/widget/buttom_manu.dart';
import 'package:astro/widget/drawer_manu.dart';
import 'package:flutter/material.dart';

import '../widget/horoscope_card.dart';

class DailyHoroscope extends StatefulWidget {
  const DailyHoroscope({Key? key}) : super(key: key);

  @override
  State<DailyHoroscope> createState() => _DailyHoroscopeState();
}

class _DailyHoroscopeState extends State<DailyHoroscope> {
  List<Map<String, dynamic>> horoscopeList = [
    {"name": "Aries", "icon": "assets/images/virgo.png", "color": 0xffE0E6FF},
    {"name": "Taurus", "icon": "assets/images/leo.png", "color": 0xffFFF9EB},
    {"name": "Gemini", "icon": "assets/images/virgo.png", "color": 0xffD4F8FF},
    {"name": "Cancer", "icon": "assets/images/leo.png", "color": 0xffFFF6E0},
    {"name": "Leo", "icon": "assets/images/virgo.png", "color": 0xffE3E8FF},
    {"name": "Virgo", "icon": "assets/images/leo.png", "color": 0xffFFDDD7},
    {"name": "Libra", "icon": "assets/images/virgo.png", "color": 0xffD0FFF0},
    {"name": "Scorpius", "icon": "assets/images/leo.png", "color": 0xffFFF7EA},
    {"name": "Sagittarius", "icon": "assets/images/virgo.png", "color": 0xffD4F8FF},
    {"name": "Capricornus", "icon": "assets/images/virgo.png", "color": 0xffFFF6E0},
    {"name": "Aquarius", "icon": "assets/images/leo.png", "color": 0xffE0E6FF},
    {"name": "Pisces", "icon": "assets/images/leo.png", "color": 0xffFFF9EB},
  ];
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
                      "Daily Horoscope",
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
                padding: const EdgeInsets.only(top: 20, right: 20, left: 20,bottom: 20),
                decoration: const BoxDecoration(
                    color: Color(0xFFF8F8F9),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                    )),
                child: Column(
                  children: [
                    GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1.0,
                        mainAxisSpacing: 20.0,
                        crossAxisSpacing: 13.0,
                        mainAxisExtent: 130,
                      ),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 12,
                      itemBuilder: (context, index) {
                        return HoroscopeNameCard(
                            name: horoscopeList[index]['name'].toString(),
                            image: horoscopeList[index]['icon'].toString(),
                            color: horoscopeList[index]['color']);
                      },
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