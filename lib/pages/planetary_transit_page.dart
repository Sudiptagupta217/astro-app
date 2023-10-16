import 'package:astro/utils/default_colors.dart';
import 'package:flutter/material.dart';
import '../widget/buttom_manu.dart';
import '../widget/drawer_manu.dart';
import '../widget/planetary_card.dart';

class PlanetaryTransit extends StatefulWidget {
  const PlanetaryTransit({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => PlanetaryTransitState();
}

class PlanetaryTransitState extends State<PlanetaryTransit> {

  List<Map<String, dynamic>> planetary = [
  {
    'image': 'assets/images/jupiter.png',
    'titleText': 'Jupiter Transit',
    'bodyText': 'Know the impact of Guru transit, expect great changes, profits and fulfillment of desire. ',
    'color':0xfff2deda
  },
    {
      'image': 'assets/images/venus.png',
      'titleText': 'Jupiter Transit',
      'bodyText': 'Know the impact of Guru transit, expect great changes, profits and fulfillment of desire. ',
      'color': 0xffDAF2F1
    },
    {
      'image': 'assets/images/jupiter.png',
      'titleText': 'Jupiter Transit',
      'bodyText': 'Know the impact of Guru transit, expect great changes',
      'color': 0xffdae6f2
    },
    {
      'image': 'assets/images/venus.png',
      'titleText': 'Jupiter Transit',
      'bodyText': 'Know the impact of Guru transit, expect great changes, profits and fulfillment of desire. Know the impact of Guru transit, expect great changes, profits and fulfillment of desire. ',
      'color': 0xfff2dada
    },
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
        child:  Container(
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
                      "Planetary Transit",
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
                padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
                decoration: const BoxDecoration(
                    color: DefaultColor.bg_color,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                    )
                ),
                child:
                Column(
                  children: [
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: planetary.length,
                      itemBuilder: (context, index) {
                      return  PlanetaryCard(image: planetary[index]['image'],
                              titleText: planetary[index]['titleText'],
                              bodyText: planetary[index]['bodyText'],
                              color: planetary[index]['color'],);
                    },)
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
