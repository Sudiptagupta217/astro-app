import 'package:astro/widget/custom_button.dart';
import 'package:astro/utils/default_colors.dart';
import 'package:flutter/material.dart';
import '../utils/Custom_Font.dart';
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
      backgroundColor: DefaultColor.bg_color,
      drawer: DrawerManu(),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration:  BoxDecoration(
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
                      const EdgeInsets.only(top: 25, left: 15, right: 15, bottom: 25),
                  decoration:  BoxDecoration(
                      color: Color(0xFFF8F8F9),
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                      )),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height:260,
                            width: 260,
                            child: Image.asset('assets/images/shopbag.png')),
                        const SizedBox(height: 10,),
                        const Text("Your Order is",style: TextStyle(fontSize: 22, fontFamily: Poppins,),),
                        SizedBox(
                          height: 60,
                            width: 200,
                            child: Image.asset('assets/images/confirmed.png',fit: BoxFit.fill,)),
                        const SizedBox(height: 30,),

                         const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Order ID: ",style: TextStyle(fontSize: 22, fontFamily: Poppins,fontWeight: FontWeight.w600),),
                            Text("123456",style: TextStyle(fontSize: 22, fontFamily: Poppins,),)
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                         const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Delivery on : ",style: TextStyle(fontSize: 15, fontFamily: Poppins,fontWeight: FontWeight.w600),),
                            Text("3 Days",style: TextStyle(fontSize: 15, fontFamily: Poppins,),)
                          ],
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                    CustomButton(title: "Shop More",margin: EdgeInsets.only(bottom: 10),
                      backgroundColor: DefaultColor.blue,
                      foregroundColor: DefaultColor.white,
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.20,
                        vertical: 19),
                      callback: () {
                      Navigator.pushNamed(context, "/home");
                        },
                    )
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