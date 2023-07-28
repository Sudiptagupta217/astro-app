import 'package:flutter/material.dart';

import '../widget/drawer_manu.dart';

class ConfirmedBuy extends StatefulWidget {
  const ConfirmedBuy({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => ConfirmedBuyState();
}

class ConfirmedBuyState extends State<ConfirmedBuy> {
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
                        "Checkout",
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
                  padding:
                      EdgeInsets.only(top: 25, left: 15, right: 15, bottom: 25),
                  decoration: const BoxDecoration(
                      color: Color(0xFFF8F8F9),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                      )),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height:260,
                            width: 260,
                            child: Image.asset('assets/images/shopbag.png')),
                        SizedBox(height: 10,),
                        Text("Your Order is",style: TextStyle(fontSize: 22),),
                        Container(
                          height: 60,
                            width: 150,
                            child: Image.asset('assets/images/confirmed.png',)),
                        SizedBox(height: 30,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Order ID: ",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),),
                            Text("123456",style: TextStyle(fontSize: 22,),)
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Delivery on : ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                            Text("3 Days",style: TextStyle(fontSize: 16,),)
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/home");
                          },
                          style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                  MediaQuery.of(context).size.width * 0.13,
                                  vertical: 19),
                              elevation: 2,
                              foregroundColor: Color(0xFFFFFFFF),
                              backgroundColor: Color(0xFF341A9D)),
                          child: Text(
                            "Shop More",
                            style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ),

                      ]
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
