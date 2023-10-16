import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class ShopItemCard extends StatelessWidget {
  final VoidCallback callback;
  final String image;
  final String name;
  final String type;
  final String newPrice;
  final String oldPrice;
  const ShopItemCard({Key? key, required this.callback, required this.image, required this.name, required this.type, required this.newPrice, required this.oldPrice}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        callback();
      },
      child: Card(
        shape: const OutlineInputBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20)),
            borderSide: BorderSide(color: Colors.white)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  right: 8.0, top: 8),
              child: Row(
                children: [
                  const Spacer(),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(20)),
                      color: Color(0xFFECECEC),
                    ),
                    child: const Center(
                      child: FaIcon(FontAwesomeIcons.heart, size: 14,
                        color: Colors.blue,),
                    ),
                  )

                ],
              ),
            ),
            Center(
              child:
              Image.asset(image,
                height: 120, width: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 15, left: 12.0, right: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment
                    .start,
                children: [
                  Text(name,
                    style: const TextStyle(color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),),
                  Text(type,
                    style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 15),),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        newPrice,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight
                                .w600),),
                      const SizedBox(width: 5),
                      Text(
                        oldPrice,
                        style: const TextStyle(
                            color: Colors.black54,
                            fontSize: 10),),
                    ],
                  )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
