import 'package:astro/utils/Custom_Font.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class MyCartItem extends StatefulWidget {
  final String image;
  final String title;
  final String category;
  final String price;

  const MyCartItem({super.key,
    required this.image,
    required this.title,
    required this.category,
    required this.price});

  @override
  State<MyCartItem> createState() => _MyCartItemState();
}

class _MyCartItemState extends State<MyCartItem> {
  int count=1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0, top: 4),
      child: SizedBox(
        height: 140,
        child: Card(
          elevation: 7,
          shadowColor: Colors.white,
          shape: const OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(5),
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5)),
              borderSide:
              BorderSide(color: Colors.white)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 12),
                  child: Image.asset(widget.image,
                      fit: BoxFit.cover),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 12),
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      Text(widget.title,
                        style: const TextStyle(
                            fontSize: 20,
                            fontFamily: ProzaLibre,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      Row(
                        children: [
                          const Text('Category: ',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight:
                                  FontWeight.w600,
                                  fontFamily: Inter,
                                  color: Colors.black)),
                          Text(widget.category,
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontFamily: Inter,
                                  color: Colors.black54)),
                        ],
                      ),
                      const Spacer(),
                      Text(widget.price,
                        style: const TextStyle(
                            fontSize:16,
                            fontFamily: Inter,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 12),
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(20)),
                          color: Color(0xFFCECDCD),
                        ),
                        child: const Center(
                          child: FaIcon(
                            FontAwesomeIcons.heart,
                            size: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(20),
                            //color: Colors.yellow,
                            border: Border.all(width: 1,color: Colors.grey)),
                        height: 25,
                        width: 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  count--;
                                });
                              },
                                child: const Text("–",style: TextStyle(fontSize: 15),)),
                            Text(count.toString(),style: const TextStyle(fontSize: 15),),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  count++;
                                });
                              },
                                child: const Text("+",style: TextStyle(fontSize: 15),)),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
