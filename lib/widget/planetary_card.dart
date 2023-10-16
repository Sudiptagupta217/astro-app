import 'package:flutter/material.dart';

class PlanetaryCard extends StatelessWidget {
  final String image;
  final String titleText;
  final String bodyText;
  final int color;
  const PlanetaryCard({Key?key,
    required this.image,
    required this.titleText,
    required this.bodyText,
    required this.color}):super(key:key);

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 160,
          ),

          Positioned(
            top: 27,
            left: 2,
            right: 2,
            bottom: 2,
            child: Container(
              padding: const EdgeInsets.only(top: 20,left: 65,right: 10),
              width: MediaQuery.of(context).size.width,
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(color),),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(titleText,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                  const SizedBox(height: 10,),
                  Text(bodyText,maxLines: 3,
                      style: const TextStyle(fontSize: 15)),
                ],
              ),
            ),
          ),

          Positioned(
            left: 9,
            child: SizedBox(
              width: 70,
              height: 165,
              child: Column(
                children: [
                  ClipRRect
                    (borderRadius: BorderRadius.circular(50),
                      child: Image.asset(image)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}