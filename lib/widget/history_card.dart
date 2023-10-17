import 'package:flutter/material.dart';

import '../utils/Custom_Font.dart';

class HistoryCard extends StatelessWidget {
  final String image;
  final String text;
  final String time;
  final String buttonText;
  const HistoryCard({super.key, required this.image, required this.text, required this.time, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 0.05,
        shadowColor: Colors.grey,
        child:

        Container(
          padding: EdgeInsets.only(top: 15,bottom: 15,left: 15,right: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(image,
                  fit: BoxFit.cover,
                  width: 50,
                  height: 50),

              const SizedBox(width: 8,),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment:  MainAxisAlignment.start,
                  children: [
                    Text(text,
                      maxLines: 3,
                      style: const TextStyle(color: Colors.black87,fontSize: 13,fontFamily: Poppins,),),
                    const SizedBox(height: 15,),
                    Row(
                      children: [
                        Text(time,
                          style: const TextStyle(color: Colors.black54,fontSize: 12,fontFamily: Poppins,),),
                        const Spacer(),
                        Text(buttonText,
                          style: const TextStyle(color: Colors.red,fontFamily: Poppins,fontSize: 13,fontWeight: FontWeight.w500),),
                      ],
                    )
                  ],
                ),
              )

            ],
          ),
        )

    );
  }
}
