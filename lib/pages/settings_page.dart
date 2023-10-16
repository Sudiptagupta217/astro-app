import 'package:astro/utils/default_colors.dart';
import 'package:flutter/material.dart';
import '../widget/drawer_manu.dart';

class UserSettings extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => UserSettingsState();
}

class UserSettingsState extends State<UserSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
        drawer: DrawerManu(),
        body: SingleChildScrollView(
  child: Container(
    width: MediaQuery.of(context).size.width,
  //  height: MediaQuery.of(context).size.height,
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
                "Settings",
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
          padding: const EdgeInsets.only(top:20, right: 20, left: 20),
          decoration: const BoxDecoration(
              color: Color(0xFFF8F8F9),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50.0),
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 0,
                shape: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: const BorderSide( color: Color(0xFFF8F8F9))),
                child: Container(
                    color: const Color(0xFFF8F8F9),
                  padding: const EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                    child: const Text("Account",style: TextStyle(fontSize: 20),)
                )
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/notification');
                },
                child: Card(
                    elevation: 0,
                    shape: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: const BorderSide( color: Color(0xFFF8F8F9))),
                    child: Container(
                        color: DefaultColor.bg_color,
                        padding: const EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width,
                        child:
                        const Row(
                          children: [
                            Text("Notifications",style: TextStyle(fontSize: 20),),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_rounded)
                          ],
                        )
                    )
                ),
              ),
              Card(
                  elevation: 0,
                  shape: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: const BorderSide( color: Color(0xFFF8F8F9))),
                  child: Container(
                      color:DefaultColor.bg_color,
                      padding: const EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width,
                      child: const Text("Help & Support",style: TextStyle(fontSize: 20),)
                  )
              ),
              Card(
                  elevation: 0,
                  shape: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: const BorderSide( color: Color(0xFFF8F8F9))),
                  child: Container(
                      color: DefaultColor.bg_color,
                      padding: const EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width,
                      child: const Text("Privacy Policy",style: TextStyle(fontSize: 20),)
                  )
              ),
              Card(
                  elevation: 0,
                  shape: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: const BorderSide( color: Color(0xFFF8F8F9))),
                  child: Container(
                      color: DefaultColor.bg_color,
                      padding: const EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width,
                      child: const Text("Country",style: TextStyle(fontSize: 20),)
                  )
              ),
              Card(
                  elevation: 0,
                  shape: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: const BorderSide( color: Color(0xFFF8F8F9))),
                  child: Container(
                      color: DefaultColor.bg_color,
                      padding: const EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width,
                      child: const Text("Language",style: TextStyle(fontSize: 20),)
                  )
              )
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
