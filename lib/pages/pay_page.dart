import 'package:astro/utils/Custom_Font.dart';
import 'package:astro/widget/custom_button.dart';
import 'package:astro/utils/default_colors.dart';
import 'package:flutter/material.dart';
import '../widget/buttom_manu.dart';
import '../widget/drawer_manu.dart';
import '../widget/pay_from_card.dart';
import '../widget/pay_user_card.dart';

class Pay extends StatefulWidget {
  const Pay({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => PayState();
}

class PayState extends State<Pay> {
  int selectedIndex = 3;

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var payId = [
      {'image': 'assets/images/profile.png', 'name': 'Jessica'},
      {'image': 'assets/images/profile1.png', 'name': 'Baker'},
      {'image': 'assets/images/profile2.png', 'name': 'Kevin'},
      {'image': 'assets/images/profile.png', 'name': 'Amy'},
      {'image': 'assets/images/profile1.png', 'name': 'Jimmy'},
    ];
    return Scaffold(
      drawer: DrawerManu(),
      bottomNavigationBar: BottomMenu(
        selectedIndex: selectedIndex,
        onClicked: onClicked,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery
              .of(context)
              .size
              .width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                margin: const EdgeInsets.only(top: 60),
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
                      "Pay",
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
                  padding: const EdgeInsets.only(top: 30,),
                  decoration: const BoxDecoration(
                      color: Color(0xFFF8F8F9),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "From",
                          style: TextStyle(
                              fontSize: 19,
                              fontFamily: Raleway,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SingleChildScrollView(
                        padding: EdgeInsets.only(left: 20),
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            PayFormCard(title: 'wallet', value: '..2341',),
                            SizedBox(
                              width: 15,
                            ),
                            PayFormCard(title: 'wallet', value: '..6789',),

                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "To",
                          style: TextStyle(
                              fontSize: 19,
                              fontFamily: Raleway,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        padding: const EdgeInsets.only(left: 20),
                        scrollDirection: Axis.horizontal,
                        child: SizedBox(
                          height: 80,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 5),
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade300,
                                        offset: const Offset(-2, 2),
                                        blurRadius: 5,
                                        spreadRadius: 0,
                                      )
                                    ]),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.black87,
                                  size: 30,
                                ),
                              ),

                              const SizedBox(
                                width: 8,
                              ),


                              ListView.builder(
                                shrinkWrap: true,
                                physics: const BouncingScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return PayUserCard(name: payId[index]["name"].toString(),
                                   image: payId[index]["image"].toString());
                                },
                                itemCount: payId.length,
                                scrollDirection: Axis.horizontal,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),

                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Amounts",
                              style: TextStyle(
                                  fontSize: 21,
                                  fontFamily: Raleway,fontWeight: FontWeight.w600),
                            ),
                            Spacer(),
                            Text(
                              "Available Balance",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: Raleway
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "\$ 9,756.00",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: Poppins,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff341A9D)),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        height: 55,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Colors.white,
                        ),
                        child: TextFormField(
                          style: const TextStyle(color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                      color: Colors.white, width: 1)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                      color: Colors.white, width: 1)),
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                      color: Colors.white, width: 1)),
                              suffixText: "0.00",
                              prefixIcon: const Icon(Icons.currency_rupee,
                                  color: Color(0xff341A9D))),
                        ),
                      ),

                      const SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextFormField(
                          maxLines:4,
                          style: const TextStyle(color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 1)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 1)),
                            disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 1)),
                            hintText: "Type note to party... ",
                            hintStyle: const TextStyle(fontSize: 14,fontFamily: Raleway)
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 25),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                         CustomButton(title: "Send",
                           padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 10),
                           backgroundColor: DefaultColor.blue,
                           foregroundColor: DefaultColor.white,
                           callback: () {

                         },),

                            const SizedBox(width: 5,),

                            CustomButton(title: "Cancel",
                              padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                              backgroundColor: DefaultColor.grey,
                              foregroundColor: const Color(0xff4E4E4E),
                              callback: () {
                              },),
                          ],
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
