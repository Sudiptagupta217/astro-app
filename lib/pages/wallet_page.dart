import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/buttom_manu.dart';
import '../widget/drawer_manu.dart';
import 'package:carousel_slider/carousel_slider.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _WalletaPageState();
}

class _WalletaPageState extends State<WalletPage> {
  int selectedIndex = 3;

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<String> bannerImages = [
      'assets/images/mastercard.png',
      'assets/images/mastercard.png',
      'assets/images/mastercard.png',
    ];

    var transactions = [
      {
        'paymenttype': 'Payment from Fiverr',
        'status': 'Completed',
        'price': '\$50'
      },
      {
        'paymenttype': 'Payment from Fiverr',
        'status': 'Completed',
        'price': '\$50'
      },
    ];

    return Scaffold(
      drawer: DrawerManu(),
      bottomNavigationBar: BottomMenu(
        selectedIndex: selectedIndex,
        onClicked: onClicked,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Container(
                //   padding: EdgeInsets.symmetric(horizontal: 25),
                margin: EdgeInsets.only(top: 60),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            child: Text(
                              "My Wallet",
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
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 5.0, right: 9),
                            child: Text('\$',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700)),
                          ),
                          Text("2040.00",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Wallet Balance",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Stack(
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width,
                            height: 100),

                        Positioned(
                            top: 35,
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xFFF8F8F9),
                                  //color: Colors.green,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50.0),
                                    )),
                                width: MediaQuery.of(context).size.width,
                                height: 150,
                            )),

                        Positioned(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 100,
                              child:
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  InkWell(
                                    onTap:(){
                                      Navigator.pushNamed(context, '/pay');
                                    },
                                    child: Column(
                                      children: [
                                        Card(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                16.0), // Set desired corner radius
                                          ),
                                          color: Colors.white,
                                          elevation: 3,
                                          child: Container(
                                              width: 70,
                                              height: 70,
                                              child:
                                              Padding(
                                                padding: const EdgeInsets.all(20.0),
                                                child: Image.asset("assets/images/pay.png"),
                                              )),
                                        ),
                                        Text(
                                          "Pay",
                                          style: TextStyle(
                                              color: Color(0xff341A9D),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),

                                  SizedBox(width: 15,),

                                  Column(
                                    children: [
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              16.0), // Set desired corner radius
                                        ),
                                        color: Colors.white,
                                        elevation: 3,
                                        child: Container(
                                            width: 70,
                                            height: 70,
                                            child: Padding(
                                              padding: const EdgeInsets.all(20.0),
                                              child: Image.asset("assets/images/details.png"),
                                            )),
                                      ),
                                      Text(
                                        "Details",
                                        style: TextStyle(
                                            color: Color(0xff341A9D),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),

                                ],
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                // margin: EdgeInsets.only(top: 7),
                padding: EdgeInsets.only( right: 20, left: 20),
                color: Color(0xFFF8F8F9),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cards",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    CarouselSlider(
                      options: CarouselOptions(
                        height: 200,
                        // autoPlay: true,
                        scrollDirection: Axis.horizontal,
                        enlargeCenterPage: true,
                        viewportFraction: 0.8,
                        aspectRatio: 16 / 9,
                      ),
                      items: bannerImages.map((item) {
                        return Container(
                          child: Center(
                            child: Image.asset(
                              item,
                              fit: BoxFit.cover,
                              width: 1000,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recent Transactions",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, "/recent_transaction");
                            },
                            child: Text(
                              "See All",
                              style: TextStyle(fontSize: 14),
                            )),
                      ],
                    ),
                    Container(
                      //height: 200,
                      child: ListView(
                          padding: EdgeInsets.only(top: 5),
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(),
                          children: transactions.map((value) {
                            return Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Card(
                                color: Colors.white,
                                elevation: 0.1,
                                shadowColor: Colors.blueGrey,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Container(
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      radius: 30.0,
                                      backgroundImage: AssetImage(
                                          'assets/images/profile.png'),
                                    ),
                                    title: Text(value['paymenttype'].toString(),
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600)),
                                    subtitle: Text(value['status'].toString(),
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.green,fontWeight: FontWeight.w600)),
                                    trailing: Text(
                                      value['price'].toString(),
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }).toList()),
                    )
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
