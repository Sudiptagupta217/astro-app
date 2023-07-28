import 'package:astro/widget/astro_card.dart';
import 'package:astro/widget/buttom_manu.dart';
import 'package:astro/widget/drawer_manu.dart';
import 'package:flutter/material.dart';

class AstrologersList extends StatefulWidget {
  const AstrologersList({Key? key}) : super(key: key);

  @override
  State<AstrologersList> createState() => _AstrologersListState();
}

class _AstrologersListState extends State<AstrologersList> {


  List<Map<String, dynamic>> allAstro = [
    {"images": "assets/images/astro.png", "title": "Web Dev"},
    {"images": "assets/images/astro.png", "title": "Web Design"},
    {"images": "assets/images/astro.png", "title": "App Design"},
    {"images": "assets/images/astro.png", "title": "App Design"},

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

          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"), fit: BoxFit.cover)),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                margin: EdgeInsets.only(top: 50),
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
                        "Astrologers List",
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
                padding: EdgeInsets.only(top: 20, right: 25, left: 25),
                decoration: BoxDecoration(
                    color: Color(0xFFF8F8F9),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                    )),
                child: Column(
                  children: [

                       ListView.builder(
                         padding: EdgeInsets.only(top: 15),
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemCount: allAstro.length,
                        itemBuilder: (BuildContext ctxt, int index) => AstroCard(image: allAstro[index]['images'],text: "Connect"),

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
