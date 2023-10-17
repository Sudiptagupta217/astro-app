import 'package:flutter/material.dart';

import '../utils/Custom_Font.dart';

class PaymentCard extends StatefulWidget {
  final String image;
  final String text1;
  final String text2;
  const PaymentCard({super.key, required this.image, required this.text1, required this.text2});

  @override
  State<PaymentCard> createState() => _PaymentCardState();
}

class _PaymentCardState extends State<PaymentCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 60,
          width: 60,
          margin: const EdgeInsets.only(bottom: 10),
          child: Card(
            elevation: 0.09,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child:
              Image.asset(widget.image),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 5),
          height: 60,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.text1,
                style: const TextStyle(
                    fontSize: 16, fontFamily: Poppins,
                    fontWeight: FontWeight.w500),
              ),
              Text(widget.text2,
                style: const TextStyle(color: Colors.black54, fontFamily: Poppins,fontSize: 12),
              ),
            ],
          ),
        ),
        const Spacer(),
        const SizedBox(
          height: 60,
          child: Icon(Icons.circle_outlined,size: 18,),
        ),
      ],
    );
  }
}
