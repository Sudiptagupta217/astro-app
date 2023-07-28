import 'package:flutter/material.dart';

import '../widget/buttom_manu.dart';
import '../widget/drawer_manu.dart';

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
    var payid = [
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
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                margin: EdgeInsets.only(top: 60),
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
                        "Pay",
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
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  margin: EdgeInsets.only(top: 30),
                  padding: EdgeInsets.only(top: 30,),
                  decoration: BoxDecoration(
                      color: Color(0xFFF8F8F9),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "From",
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        padding: EdgeInsets.only(left: 20),
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.all(Radius.circular(20)),
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xFF19387D),
                                      Color(0xFF1C3C84)
                                    ],
                                    begin: const FractionalOffset(0.2, 1.0),
                                    end: const FractionalOffset(1.5, 0.1),
                                    stops: [0.0, 1.3],
                                    tileMode: TileMode.clamp),
                              ),
                              height: 65,
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.7,
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(children: [
                                  Text(
                                    "wallet",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                  Spacer(),
                                  Text(
                                    '..2323',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  )
                                ]),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xFF1C3C84),
                                      Color(0xFFC23335)
                                    ],
                                    begin: const FractionalOffset(0.2, 1.0),
                                    end: const FractionalOffset(1.0, 0.1),
                                    stops: [0.0, 1.3],
                                    tileMode: TileMode.clamp),
                                borderRadius:
                                BorderRadius.all(Radius.circular(20)),
                              ),
                              height: 65,
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.7,
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(children: [
                                  Text(
                                    "Card",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                  Spacer(),
                                  Text(
                                    '..2323',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  )
                                ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "To",
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        padding: EdgeInsets.only(left: 20),
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          height: 75,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade300,
                                        offset: Offset(-2, 2),
                                        blurRadius: 5,
                                        spreadRadius: 0,
                                      )
                                    ]),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.black87,
                                  size: 30,
                                ),
                              ),

                              SizedBox(
                                width: 8,
                              ),


                              ListView.builder(
                                shrinkWrap: true,
                                physics: BouncingScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 55,
                                          width: 55,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey.shade300,
                                                  offset: Offset(-2, 5),
                                                  blurRadius: 5,
                                                  spreadRadius: 0,
                                                )
                                              ]),
                                          child: ClipRRect(
                                              borderRadius:
                                              BorderRadius.circular(50),
                                              child: Image.asset(
                                                payid[index]['image']!,
                                                fit: BoxFit.fill,
                                              )),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          payid[index]['name']!,
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff2F498C),
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  );
                                },
                                itemCount: payid.length,
                                scrollDirection: Axis.horizontal,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Amounts",
                              style: TextStyle(
                                  fontSize: 21, fontWeight: FontWeight.w600),
                            ),
                            Spacer(),
                            Text(
                              "Available Balance",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "\$ 9,756.00",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff341A9D)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Colors.white,
                        ),
                        child: TextFormField(
                          style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 1)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 1)),
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 1)),
                              suffixText: "0.00",
                              // suffixIcon: IconButton(
                              //   icon: Icon(
                              //     Icons.remove_red_eye,
                              //     color: Colors.black,
                              //   ),
                              //   onPressed: () {},
                              // ),
                              prefixIcon: Icon(Icons.currency_rupee,
                                  color: Color(0xff341A9D))),
                        ),
                      ),

                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextFormField(
                          maxLines:4,
                          style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide(
                                    color: Colors.white, width: 1)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide(
                                    color: Colors.white, width: 1)),
                            disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide(
                                    color: Colors.white, width: 1)),
                            hintText: "Type note to party... ",
                            hintStyle: TextStyle(fontSize: 14)
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 25),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: (){
                                Navigator.pushNamed(context, '/home');
                              },
                              style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 35, vertical: 14),
                                  elevation: 2,
                                  foregroundColor: Colors.white,
                                  backgroundColor: Color(0xFF0341A9)
                              ),
                              child: Text("Send"),
                            ),

                            SizedBox(width: 5,),
                            TextButton(
                              onPressed: (){
                                Navigator.pushNamed(context, '/home');
                              },
                              style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 35, vertical: 14),
                                  elevation: 0.1,
                                  foregroundColor: Colors.black54,
                                  backgroundColor: Colors.grey.shade100
                              ),
                              child: Text("Cancel"),
                            ),
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
