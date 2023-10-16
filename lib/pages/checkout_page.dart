import 'package:astro/widget/custom_button.dart';
import 'package:astro/utils/default_colors.dart';
import 'package:astro/widget/delivery_address_card.dart';
import 'package:flutter/material.dart';
import '../widget/drawer_manu.dart';
import '../widget/payment_card.dart';

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
                      "Checkout",
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
                  padding:
                      const EdgeInsets.only(top: 35, left: 15, right: 15, bottom: 25),
                  decoration: const BoxDecoration(
                      color: Color(0xFFF8F8F9),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Delivery Address",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 10),

                   DeliveryAddressCard(address1: "Hno:745, Phase 3B1, Mohali", address2: "Punjab-160060", callback: (){}),

                      const SizedBox(height: 30,),

                      const Text(
                        "Payment Method",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 10),

                      const PaymentCard(image: 'assets/images/card.png', text1: 'Credit/Debit/ATM Card', text2: '0000',),
                      const PaymentCard(image: 'assets/images/wallet.png', text1: 'Wallet', text2: "Balance: \$200.00",),
                      const PaymentCard(image: 'assets/images/upi.png', text1: 'UPI', text2: 'Paytm/PhonePe/GooglePay',),

                      const SizedBox(height: 70,),

                      const Row(
                        children: [
                          Text("Total",style: TextStyle(fontSize: 16,color: Colors.black54),),
                          Spacer(),
                          Text("Rs.3,580",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black),),

                        ],
                      ),

                      const SizedBox(height: 70,),

                    CustomButton(title: "Pay Now",
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.22,
                          vertical: 20),
                      foregroundColor: DefaultColor.white,
                      backgroundColor: DefaultColor.blue,
                      callback: (){
                        Navigator.pushNamed(context, "/confirmed");
                        },
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}