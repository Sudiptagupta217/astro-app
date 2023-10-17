import 'package:astro/utils/Custom_Font.dart';
import 'package:flutter/material.dart';

class PayFormCard extends StatefulWidget {
  final String title ;
  final String value;
  const PayFormCard({Key? key, required this.title, required this.value,}):super(key: key);

  @override
  State<PayFormCard> createState() => _PayFormCardState();
}

class _PayFormCardState extends State<PayFormCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius:
        BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
            colors: [
              Color(0xFF19387D),
              Color(0xFF1C3C84)
            ],
            begin: FractionalOffset(0.2, 1.0),
            end: FractionalOffset(1.5, 0.1),
            stops: [0.0, 1.3],
            tileMode: TileMode.clamp),
      ),
      height: 65,
      width: MediaQuery
          .of(context)
          .size
          .width * 0.7,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(children: [
          Text(widget.title,
            style: const TextStyle(
                fontSize: 20,
                fontFamily: Raleway,
                fontWeight: FontWeight.w600,
                color: Colors.white),
          ),
          const Spacer(),
          Text(widget.value,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: Raleway,
                color: Colors.white),
          )
        ]),
      ),
    );
  }
}
