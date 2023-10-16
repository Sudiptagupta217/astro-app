import 'package:astro/pages/intake_form_page.dart';
import 'package:astro/utils/default_colors.dart';
import 'package:astro/widget/astro_card.dart';
import 'package:astro/widget/buttom_manu.dart';
import 'package:astro/widget/drawer_manu.dart';
import 'package:flutter/material.dart';

class AstroCall extends StatefulWidget {
  const AstroCall({Key? key}) : super(key: key);

  @override
  State<AstroCall> createState() => _AstroCallState();
}

class _AstroCallState extends State<AstroCall> {
  List<Map<String, dynamic>> allAstro = [
    {
      "image": "assets/images/astro.png",
      "name": 'John Dow',
      "astroType": 'Vasthu, Vedic',
      "languageKnown": 'Hindi, English, Punjabi',
      "experience": '10 Years',
      "rate": '5',
      "price": '30/min',
    },
    {
      "image": "assets/images/astro.png",
      "name": 'John Dow',
      "astroType": 'Vasthu, Vedic',
      "languageKnown": 'Hindi, English, Punjabi',
      "experience": '10 Years',
      "rate": '5',
      "price": '30/min',
    },
    {
      "image": "assets/images/astro.png",
      "name": 'John Dow',
      "astroType": 'Vasthu, Vedic',
      "languageKnown": 'Hindi, English, Punjabi',
      "experience": '10 Years',
      "rate": '5',
      "price": '30/min',
    },
    {
      "image": "assets/images/astro.png",
      "name": 'John Dow',
      "astroType": 'Vasthu, Vedic',
      "languageKnown": 'Hindi, English, Punjabi',
      "experience": '10 Years',
      "rate": '5',
      "price": '30/min',
    }
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
          //  height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,

          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"),
                  fit: BoxFit.cover)),
          child: Column(children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              margin: const EdgeInsets.only(top: 50),
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
                    "Call",
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
                  color: DefaultColor.bg_color,
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
                      itemBuilder: (BuildContext context, int index) =>
                          AstroCard(
                            image: allAstro[index]['image'],
                            name: allAstro[index]['name'],
                            astroType: allAstro[index]['astroType'],
                            languageKnown: allAstro[index]['languageKnown'],
                            experience: allAstro[index]['experience'],
                            callback: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const IntakeForm(),));
                            },
                            rate: allAstro[index]['rate'],
                            buttonText: 'Call',
                            price: allAstro[index]['price'],
                          )),
                ],
              ),
            ),
          ]),
        )));
  }
}
