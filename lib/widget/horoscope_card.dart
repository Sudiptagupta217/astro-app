import 'package:astro/utils/Custom_Font.dart';
import 'package:flutter/material.dart';

import '../pages/horoscope_details.dart';

class HoroscopeNameCard extends StatelessWidget {
  final String name;
  final String image;
  final int color;

  const HoroscopeNameCard({super.key,
    required this.name,
    required this.image,
    required this.color,
    });

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => HoroscopeDetails(
                  image: image,
                  name: name,
                )));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.26,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color(0xffDDDDDD),
                blurRadius: 6.0,
                spreadRadius: 2.0,
                offset: Offset(0.0, 0.0),
              )
            ],
            borderRadius: BorderRadius.circular(20),
            color: Color(color)),
        padding: const EdgeInsets.symmetric(
            horizontal: 10, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  name,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,fontFamily: Lato,
                      fontWeight: FontWeight.w700),
                ))
          ],
        ),
      ),
    );
  }
}
