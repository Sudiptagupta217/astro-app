import 'package:flutter/material.dart';

class PayUserCard extends StatelessWidget {
  final String name;
  final String image;
  const PayUserCard({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 8.0),
      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.center,
        mainAxisAlignment:
        MainAxisAlignment.center,
        children: [
          Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    offset: const Offset(-2, 5),
                    blurRadius: 5,
                    spreadRadius: 0,
                  )
                ]),
            child: ClipRRect(
                borderRadius:
                BorderRadius.circular(50),
                child: Image.asset(image,
                  fit: BoxFit.fill,
                )),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(name,
            style: const TextStyle(
                fontSize: 14,
                color: Color(0xff2F498C),
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
