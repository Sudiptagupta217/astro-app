import 'package:astro/utils/Custom_Font.dart';
import 'package:astro/widget/custom_button.dart';
import 'package:astro/utils/default_colors.dart';
import 'package:flutter/material.dart';
import '../widget/drawer_manu.dart';
import '../widget/my_cart_item_card.dart';

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
                padding: const EdgeInsets.symmetric(horizontal: 25),
                margin: const EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      "My Carts",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(top: 30),
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 25),
                decoration: const BoxDecoration(
                    color: Color(0xFFF8F8F9),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                    )),
                child: Column(
                  children: [
                    ListView(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        children: cartItem.map((value) {
                          return MyCartItem(
                            image: value["image"].toString(),
                            title: value["name"].toString(),
                            category: value["category"].toString(),
                            price: value["price"].toString(),
                          );
                        }).toList()),
                    const SizedBox(
                      height: 70,
                    ),
                    const Row(
                      children: [
                        Text(
                          "Sab Total",
                          style: TextStyle(fontSize: 14,fontFamily: Inter, color: Colors.black54),
                        ),
                        Spacer(),
                        Text(
                          "Rs.3,500",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: Inter,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        Text(
                          "Shipping",
                          style: TextStyle(fontSize: 14, fontFamily: Inter,color: Colors.black54),
                        ),
                        Spacer(),
                        Text(
                          "Rs.80",
                          style: TextStyle(
                              fontSize: 20,fontFamily: Inter,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 1,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(fontSize: 14,fontFamily: Inter, color: Colors.black54),
                        ),
                        Spacer(),
                        Text(
                          "Rs.3,580",
                          style: TextStyle(
                              fontSize: 20,fontFamily: Inter,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    CustomButton(
                        title: "Proceed to Pay",
                        backgroundColor: DefaultColor.blue,
                        foregroundColor: DefaultColor.white,
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.15,
                            vertical: 19),
                        callback: () {
                          Navigator.pushNamed(context, "/checkout");
                        })
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
