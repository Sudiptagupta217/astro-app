import 'package:flutter/material.dart';

import '../utils/Custom_Font.dart';
import '../utils/default_colors.dart';

class UserFeedback extends StatelessWidget {
  final String userName;
  final String userimage;
  final String text;
  final int ratecount ;
  const UserFeedback({super.key, required this.userName, required this.text, required this.ratecount, required this.userimage});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(userimage, height: 60, width: 60,),
              const SizedBox(width: 15,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(userName,style: const TextStyle(fontWeight: FontWeight.w600,color: DefaultColor.black,fontFamily: Raleway,fontSize: 16)),
                    const SizedBox(height: 7,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        ratecount,
                            (index) => const Icon(Icons.star, color: DefaultColor.yellow, size: 20,),
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Text(text,style: const TextStyle(color: DefaultColor.black,fontFamily: Poppins,fontSize: 13)),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          Divider(thickness:1 , color: Colors.grey.shade300,)

        ],
      ),
    );
  }
}
