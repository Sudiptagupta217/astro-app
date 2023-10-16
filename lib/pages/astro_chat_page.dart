import 'package:astro/widget/astro_card.dart';
import 'package:astro/widget/buttom_manu.dart';
import 'package:astro/widget/drawer_manu.dart';
import 'package:flutter/material.dart';

class AstroChat extends StatefulWidget {
  const AstroChat({Key? key}) : super(key: key);

  @override
  State<AstroChat> createState() => _AstroChatState();
}

class _AstroChatState extends State<AstroChat> {


  List<Map<String, dynamic>> allAstro = [
    {"image": "assets/images/astro.png",
      "name": 'John Dow',
      "astroType": 'Vasthu, Vedic',
      "languageKnown": 'Hindi, English, Punjabi',
      "experience": '10 Years',
      "rate": '5',
      "price": '30/min',},
    {"image": "assets/images/astro.png",
      "name": 'John Dow',
      "astroType": 'Vasthu, Vedic',
      "languageKnown": 'Hindi, English, Punjabi',
      "experience": '10 Years',
      "rate": '5',
      "price": '30/min',},
    {"image": "assets/images/astro.png",
      "name": 'John Dow',
      "astroType": 'Vasthu, Vedic',
      "languageKnown": 'Hindi, English, Punjabi',
      "experience": '10 Years',
      "rate": '5',
      "price": '30/min',},
    {"image": "assets/images/astro.png",
      "name": 'John Dow',
      "astroType": 'Vasthu, Vedic',
      "languageKnown": 'Hindi, English, Punjabi',
      "experience": '10 Years',
      "rate": '5',
      "price": '30/min',}

  ];
  int selectedIndex = 1;

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
                      child: const Icon(Icons.arrow_back_ios, color: Colors.white,),
                    ),
                    const Spacer(),
                    const Text(
                      "Chat",
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
                padding: const EdgeInsets.only(top: 20, right: 25, left: 25),
                decoration: const BoxDecoration(
                    color: Color(0xFFF8F8F9),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                    )),
                child: Column(
                  children: [

                    ListView.builder(
                      padding: const EdgeInsets.only(top: 15),
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: allAstro.length,
                      itemBuilder: (BuildContext ctxt, int index) =>
                          AstroCard(
                            image: allAstro[index]['image'],
                            name: allAstro[index]['name'],
                            astroType: allAstro[index]['astroType'],
                            languageKnown: allAstro[index]['languageKnown'],
                            experience: allAstro[index]['experience'],
                            callback: () {  },
                            rate: allAstro[index]['rate'],
                            buttonText: 'Chat',
                            price: allAstro[index]['price'],)
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
