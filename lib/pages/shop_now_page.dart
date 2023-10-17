import 'package:astro/utils/Custom_Font.dart';
import 'package:flutter/material.dart';
import '../widget/buttom_manu.dart';
import '../widget/drawer_manu.dart';
import '../widget/show_item_card.dart';

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
        "image":"assets/images/item.png",
        'name': 'Rahu Yantra',
        'type': 'Yantras',
        'price': 'Rs. 35,000',
        'oldprice': 'Rs. 40,000'
      },
      {
        "image":"assets/images/item.png",
        'name': 'Rahu Yantra',
        'type': 'Yantras',
        'price': 'Rs. 45,000',
        'oldprice': 'Rs. 50,000'
      },
      {
        "image":"assets/images/item.png",
        'name': 'Rahu Yantra',
        'type': 'Yantras',
        'price': 'Rs. 50,000',
        'oldprice': 'Rs. 60,000'
      },
      {
        "image":"assets/images/item.png",
        'name': 'Rahu Yantra',
        'type': 'Yantras',
        'price': 'Rs. 45,000',
        'oldprice': 'Rs. 70,000'
      },
      {
        "image":"assets/images/item.png",
        'name': 'Rahu Yantra',
        'type': 'Yantras',
        'price': 'Rs. 65,000',
        'oldprice': 'Rs. 70,000'
      },
      {
        "image":"assets/images/item.png",
        'name': 'Rahu Yantra',
        'type': 'Yantras',
        'price': 'Rs. 55,000',
        'oldprice': 'Rs. 60,000'
      },
      {
        "image":"assets/images/item.png",
        'name': 'Rahu Yantra',
        'type': 'Yantras',
        'price': 'Rs. 55,000',
        'oldprice': 'Rs. 60,000'
      },
    ];
    var size = MediaQuery.of(context).size;

    const double itemHeight = 283;
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
                      "Shop Now",
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
                padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
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
                            margin: const EdgeInsets.only(left: 5),
                            height: 50,
                            decoration: BoxDecoration(borderRadius:const BorderRadius.only(bottomRight: Radius.circular(30)),
                            color: Colors.white ,
                                boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5),
                                  )]),
                            child: const TextField(
                              style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 17),
                              // enabled: false,
                              decoration: InputDecoration(
                                  hintText: "Search Here",
                                  hintStyle: TextStyle(color: Color(0xff9C9C9C),fontFamily: Inter,fontSize: 15),
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
                            margin: const EdgeInsets.only(left: 1),
                            // width: MediaQuery.of(context).size.width * 0.15,
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.filter_alt_outlined,
                                  color: Color(0xFF341A9D),
                                  size: 20,
                                ),
                                Text(
                                  "Filter",
                                  style: TextStyle(
                                      color: Color(0xFF341A9D),
                                      fontFamily: Inter,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),

                    GridView.builder(
                      padding: const EdgeInsets.only(top: 5),
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      controller: ScrollController(
                          keepScrollOffset: false),
                      itemBuilder: (context, index) {
                        return ShopItemCard(
                          image: shopitem[index]["image"].toString(),
                          name: shopitem[index]["name"].toString(),
                          type: shopitem[index]["type"].toString(),
                          newPrice: shopitem[index]["price"].toString(),
                          oldPrice: shopitem[index]["oldprice"].toString(),
                          callback: () {
                            Navigator.pushNamed(context, '/shopitemdetails');
                          },);
                      },
                      itemCount: shopitem.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: (itemWidth / itemHeight),
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5),
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
