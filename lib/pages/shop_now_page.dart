import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget/buttom_manu.dart';
import '../widget/drawer_manu.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShopNowPage extends StatefulWidget {
  const ShopNowPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => ShopNowPageState();
}

class ShopNowPageState extends State<ShopNowPage> {
  int selectedIndex = 2;

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var shopitem = [
      {
        'name': 'Rahu Yantra',
        'type': 'Yantras',
        'price': 'Rs. 35,000',
        'oldprice': 'Rs. 40,000'
      },
      {
        'name': 'Rahu Yantra',
        'type': 'Yantras',
        'price': 'Rs. 35,000',
        'oldprice': 'Rs. 40,000'
      },
      {
        'name': 'Rahu Yantra',
        'type': 'Yantras',
        'price': 'Rs. 35,000',
        'oldprice': 'Rs. 40,000'
      },
      {
        'name': 'Rahu Yantra',
        'type': 'Yantras',
        'price': 'Rs. 35,000',
        'oldprice': 'Rs. 40,000'
      },
      {
        'name': 'Rahu Yantra',
        'type': 'Yantras',
        'price': 'Rs. 35,000',
        'oldprice': 'Rs. 40,000'
      },
      {
        'name': 'Rahu Yantra',
        'type': 'Yantras',
        'price': 'Rs. 35,000',
        'oldprice': 'Rs. 40,000'
      },
      {
        'name': 'Rahu Yantra',
        'type': 'Yantras',
        'price': 'Rs. 35,000',
        'oldprice': 'Rs. 40,000'
      },
    ];
    var size = MediaQuery.of(context).size;

    final double itemHeight = 283;
    final double itemWidth = size.width / 2;

    return Scaffold(
      drawer: DrawerManu(),
      bottomNavigationBar: BottomMenu(
        selectedIndex: selectedIndex,
        onClicked: onClicked,
      ),
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
                        "Shop Now",
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
                padding: EdgeInsets.only(top: 25, left: 15, right: 15),
                decoration: const BoxDecoration(
                    color: Color(0xFFF8F8F9),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                    )),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child:
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            // padding: EdgeInsets.only(left: 10),
                            height: 50,
                            decoration: BoxDecoration(borderRadius:BorderRadius.only(bottomRight: Radius.circular(30)),
                            color: Colors.white ,
                                boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5),
                                  )]),
                            // width:MediaQuery.of(context).size.width * 0.77,
                            child: TextField(
                              style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 17),
                              // enabled: false,
                              decoration: InputDecoration(
                                  hintText: "Search",
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(30)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(30)),
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(30)),
                                  ),
                                  prefixIcon: Icon(Icons.search,
                                      color: Colors.black54)),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.only(left: 1),
                            // width: MediaQuery.of(context).size.width * 0.15,
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.filter_alt_outlined,
                                  color: Color(0xFF341A9D),
                                  size: 22,
                                ),
                                Text(
                                  "Filter",
                                  style: TextStyle(
                                      color: Color(0xFF341A9D),
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                        child: GridView.builder(
                          padding: EdgeInsets.only(top: 5),
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          controller: new ScrollController(
                              keepScrollOffset: false),
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/shopitemdetails');
                              },
                              child: Card(
                                shape: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(20)),
                                    borderSide: BorderSide(color: Colors.white)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 8.0, top: 8),
                                      child: Row(
                                        children: [
                                          Spacer(),
                                          Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                              color: Color(0xFFECECEC),
                                            ),
                                            child: Center(
                                              child: FaIcon(FontAwesomeIcons.heart, size: 14,
                                                color: Colors.blue,),
                                            ),
                                          )

                                        ],
                                      ),
                                    ),
                                    Center(
                                      child:
                                      Image.asset("assets/images/item.png",
                                        height: 120, width: 100,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15, left: 12.0, right: 8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start,
                                        children: [
                                          Text(shopitem[index]['name'] as String,
                                            style: TextStyle(color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600),),
                                          Text(shopitem[index]['type'] as String,
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 15),),
                                          SizedBox(height: 10),
                                          Row(
                                            children: [
                                              Text(
                                                shopitem[index]['price'] as String,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight
                                                        .w600),),
                                              SizedBox(width: 5),
                                              Text(
                                                shopitem[index]['oldprice'] as String,
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 10),),
                                            ],
                                          )

                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          itemCount: shopitem.length,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: (itemWidth / itemHeight),
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 5),
                        ))
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
