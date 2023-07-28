import 'package:flutter/material.dart';

import '../widget/drawer_manu.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => CheckOutState();
}

class CheckOutState extends State<CheckOut> {
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delivery Address",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
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
                            margin: EdgeInsets.only(left: 5),
                            height: 60,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Hno:745, Phase 3B1, Mohali",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "Punjab-160060",
                                  style: TextStyle(color: Colors.black54,fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 60,
                            child: Icon(Icons.arrow_forward_ios,size: 18,),
                          ),
                        ],
                      ),

                      SizedBox(height: 30,),

                      Text(
                        "Payment Method",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            child: Card(
                              elevation: 0.09,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child:
                                Image.asset("assets/images/card.png"),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            height: 60,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Credit/Debit/ATM Card",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "00000",
                                  style: TextStyle(color: Colors.black54,fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 60,
                            child: Icon(Icons.circle_outlined,size: 18,),
                          ),
                        ],
                      ),

                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            child: Card(
                              elevation: 0.09,
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child:
                                Image.asset("assets/images/wallet.png"),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            height: 60,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Wallet",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "Balance: \$200.00",
                                  style: TextStyle(color: Colors.black54,fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 60,
                            child: Icon(Icons.circle_outlined,size: 18,),
                          ),
                        ],
                      ),

                      SizedBox(height: 10),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            child: Card(
                              elevation: 0.09,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child:
                                Image.asset("assets/images/upi.png"),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            height: 60,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "UPI",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "Paytm/Phonepe/Googlepay",
                                  style: TextStyle(color: Colors.black54,fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 60,
                            child: Icon(Icons.circle_outlined,size: 18,),
                          ),
                        ],
                      ),

                      SizedBox(height: 70,),
                      Row(
                        children: [
                          Text("Total",style: TextStyle(fontSize: 16,color: Colors.black54),),
                          Spacer(),
                          Text("Rs.3,580",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black),),

                        ],
                      ),

                      SizedBox(height: 70,),

                      Center(
                        child:
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/confirmed");
                          },
                          style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                  MediaQuery.of(context).size.width * 0.13,
                                  vertical: 18),
                              elevation: 2,
                              foregroundColor: Color(0xFFFFFFFF),
                              backgroundColor: Color(0xFF341A9D)),
                          child: Text(
                            "Pay Now",
                            style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),



                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
