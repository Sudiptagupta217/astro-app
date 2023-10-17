import 'package:flutter/material.dart';

import '../utils/Custom_Font.dart';

class DeliveryAddressCard extends StatelessWidget {
  final String address1;
  final String address2;
  final VoidCallback callback;
  const DeliveryAddressCard({super.key, required this.address1, required this.address2, required this.callback});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 60,
          width: 60,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child:
              Image.asset("assets/images/location.png"),
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
              Text(address1,
                style: const TextStyle(
                    fontSize: 14,fontFamily: Poppins,
                    fontWeight: FontWeight.w500),
              ),
              Text(address2,
                style: const TextStyle(color: Colors.black54,fontFamily: Poppins,fontSize: 12),
              ),
            ],
          ),
        ),
        const Spacer(),
        InkWell(
          onTap: () {
            callback();
          },
          child: const SizedBox(
            height: 60,
            child: Icon(Icons.arrow_forward_ios,size: 18,),
          ),
        ),
      ],
    );
  }
}
