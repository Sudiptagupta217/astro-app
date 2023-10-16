import 'package:astro/widget/astro_card.dart';
import 'package:astro/widget/buttom_manu.dart';
import 'package:astro/widget/drawer_manu.dart';
import 'package:flutter/material.dart';

class TrendingConsultationsType extends StatefulWidget {
  final String? title;
  final id;
  const TrendingConsultationsType({Key? key,this.id, this.title}) : super(key: key);

  @override
  State<TrendingConsultationsType> createState() => _TrendingConsultationsTypeState();
}

class _TrendingConsultationsTypeState extends State<TrendingConsultationsType> {


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
      endDrawer: DrawerManu(),
      bottomNavigationBar: BottomMenu(
        selectedIndex: selectedIndex,
        onClicked: onClicked,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,

          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"), fit: BoxFit.cover)),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                margin: const EdgeInsets.only(top: 50),
                child: Row(

                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                      child: const Icon(Icons.arrow_back_ios, color: Colors.white,),
                    ),
                    const Spacer(),
                    const Text(
                      "Trending Consultations",
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(widget.title!,style: const TextStyle(fontSize: 22),),
                       const SizedBox(height: 2,),
                       const Text("There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. ", maxLines: 3,style: TextStyle(fontSize: 13,color: Colors.black54)),
                       ListView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: allAstro.length,
                        itemBuilder: (BuildContext context, int index){
                          return AstroCard(
                            image: allAstro[index]['image'],
                            name: allAstro[index]['name'],
                            astroType: allAstro[index]['astroType'],
                            languageKnown: allAstro[index]['languageKnown'],
                            experience: allAstro[index]['experience'],
                            callback: () {  },
                            rate: allAstro[index]['rate'],
                            buttonText: 'Continue',
                            price: allAstro[index]['price'],);
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
