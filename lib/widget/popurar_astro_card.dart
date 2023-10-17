import 'package:astro/utils/Custom_Font.dart';
import 'package:astro/utils/default_colors.dart';
import 'package:flutter/material.dart';

class popuralAstroCard extends StatelessWidget {
  final String image;
  final String rating;
  final String name;
  final String type;
  final String rate;
  final VoidCallback callback;
  const popuralAstroCard({Key?key,
    required this.image,
    required this.rating,
    required this.name,
    required this.type,
    required this.rate,
    required this.callback}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(left: 15, bottom: 20, top: 20),

      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      decoration: BoxDecoration(
          borderRadius:
          BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Color(0xffDDDDDD),
              blurRadius: 6.0,
              spreadRadius: 2.0,
              offset: Offset(0.0, 0.0),
            )
          ],
          color: Colors.white),
      child: Column(
        children: [
          Center(
            child: Stack(
              children: [
                Container(height: 100,),
                Image.asset(image,
                  height: 90,
                  width: 90,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 0,
                  left: 11,
                  child: Container(
                    padding:
                    const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 3),
                    decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius
                          .circular(50),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Color(
                              0xffDDDDDD),
                          blurRadius: 6.0,
                          spreadRadius: 2.0,
                          offset: Offset(
                              0.0, 0.0),
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Color(
                              0xffffce31),
                        ),
                        Text(rating,style: TextStyle(fontFamily: Inter),)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            name,
            style: const TextStyle(
                fontSize: 18,fontFamily: Raleway,
                fontWeight: FontWeight.w700),
          ),

          const SizedBox(height: 5,),
          Text(type,style: const TextStyle(color: Color(0xff545454),fontFamily: Raleway)),

          const SizedBox(height: 15,),

          Row(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 8),
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.currency_rupee,
                      size: 15,
                      color: DefaultColor.blue,
                    ),
                    Text(rate,style: const TextStyle(color: Color(0xff9C9C9C),fontFamily: Poppins),)
                  ],
                ),
              ),
              const SizedBox(width: 7,),
              InkWell(
                onTap: () {
                  callback();
                },
                child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 9),
                    decoration: BoxDecoration(
                        color: DefaultColor.blue,
                        borderRadius:
                        BorderRadius.circular(
                            50)),
                    child: const Text(
                      "Connect",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,fontFamily: Raleway
                      ),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}