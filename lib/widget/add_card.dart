import 'package:astro/utils/Custom_Font.dart';
import 'package:flutter/material.dart';

class AddCard extends StatelessWidget {
  final String text;
  final int color;
  final double width;

  const AddCard({super.key, required this.text, required this.color, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(color)),
      padding: const EdgeInsets.symmetric(
          horizontal: 10, vertical: 25),
      child:  Center(
        child: Text(text,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.white,fontFamily: Inter,
              fontSize: 15,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
