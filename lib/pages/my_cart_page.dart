import 'package:flutter/material.dart';

import '../widget/drawer_manu.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCart extends StatefulWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => MyCartState();
}

class MyCartState extends State<MyCart> {
  var cartItem = [
    {
      'image': 'assets/images/item.png',
      'name': 'Rahu Yantra',
      'category': 'Yantras',
      'price': 'Rs.3,500'
    },
    {
      'image': 'assets/images/item.png',
      'name': 'Rahu Yantra',
      'category': 'Yantras',
      'price': 'Rs.3,500'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerManu(),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                margin: EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      child: const Text(
                        "My Carts",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.only(left: 15, right: 15, bottom: 25),
                decoration: const BoxDecoration(
                    color: Color(0xFFF8F8F9),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                    )),
                child: Column(
                  children: [
                    ListView(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        children: cartItem.map((value) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 4.0, top: 4),
                            child: Container(
                              height: 140,
                              child: Card(
                                elevation: 7,
                                shadowColor: Colors.white,
                                shape: OutlineInputBorder(
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
                                        child: Image.asset(value['image']!,
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
                                            Text(
                                              value['name']!,
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.black),
                                            ),
                                            Row(
                                              children: [
                                                Text('Category: ',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.black)),
                                                Text(value['category']!,
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.black54)),
                                              ],
                                            ),
                                            Spacer(),
                                            Text(
                                              value['price']!,
                                              style: TextStyle(
                                                  fontSize: 20,
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
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                color: Color(0xFFCECDCD),
                                              ),
                                              child: Center(
                                                child: FaIcon(
                                                  FontAwesomeIcons.heart,
                                                  size: 14,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            Spacer(),
                                            Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  //color: Colors.yellow,
                                              border: Border.all(width: 1,color: Colors.grey)),
                                              height: 25,
                                              width: 60,
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  Text("-",style: TextStyle(fontSize: 15),),
                                                  Text("1",style: TextStyle(fontSize: 15),),
                                                  Text("+",style: TextStyle(fontSize: 15),),

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
                        }).toList()),
                    SizedBox(
                      height: 70,
                    ),
                    Row(
                      children: [
                        Text(
                          "Sab Total",
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                        Spacer(),
                        Text(
                          "Rs.3,500",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "Shipping",
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                        Spacer(),
                        Text(
                          "Rs.80",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 1,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                        Spacer(),
                        Text(
                          "Rs.3,580",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/checkout");
                      },
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.15,
                              vertical: 20),
                          elevation: 2,
                          foregroundColor: Color(0xFFFFFFFF),
                          backgroundColor: Color(0xFF341A9D)),
                      child: Text(
                        "proceed to pay",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
