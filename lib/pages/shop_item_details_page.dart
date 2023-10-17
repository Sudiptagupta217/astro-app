import 'package:astro/utils/Custom_Font.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widget/buttom_price_bar.dart';

class ShopItemDetails extends StatefulWidget {
  const ShopItemDetails({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => ShopItemDetailsState();
}

class ShopItemDetailsState extends State<ShopItemDetails> {
  int _currentIndex = 0;
  List<String> imageList = [
    'assets/images/item.png',
    'assets/images/item.png',
    'assets/images/item.png',
    'assets/images/item.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:BottomPriceBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(horizontal: 25),
                margin: const EdgeInsets.only(top: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.grey,
                      ),
                    ),
                    Column(
                      children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        height: 200.0,
                        // autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 1 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        viewportFraction: 0.8,
                      ),
                      items: imageList.map((imagePath) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Image.asset(imagePath,
                                // fit: BoxFit.cover,
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imageList.map((imagePath) {
                        int index = imageList.indexOf(imagePath);
                        return Container(
                          width: 5.0,
                          height: 5.0,
                          margin:
                              const EdgeInsets.only(top: 10, right: 2, left: 2),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _currentIndex == index
                                ? Colors.black
                                : Colors.grey,
                          ),
                        );
                      }).toList(),
                    ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height:MediaQuery.of(context).size.height*0.9,
                child: Stack(
                  children: [
                    Positioned(
                      top: 22,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height:MediaQuery.of(context).size.height,
                        //height:400,
                        // margin: EdgeInsets.only(top: 30),
                        padding: const EdgeInsets.only(
                            top: 25, left: 25, right: 15, bottom: 20),
                        decoration: const BoxDecoration(
                            color: Color(0xffF6F6F6),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50.0),
                            )),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Rahu Yantra",
                              style: TextStyle(
                                  fontSize: 29,fontFamily: Poppins, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Row(
                              children: [
                                Text(
                                  "Category: ",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: Inter,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "Yantras",
                                  style: TextStyle(color: Colors.black54, fontFamily: Inter,fontSize: 14),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Tags: ",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: Inter,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "Tags: Rahu Yantra, Rahu Yantra \n Benefits, Yantra Locket",
                                  style: TextStyle(color: Colors.black54, fontSize: 14,
                                    fontFamily: Inter,),
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 30, horizontal: 10),
                              height: 1,
                              color: Colors.black12,
                            ),
                            const Text(
                              "About this",
                              style: TextStyle(
                                  fontSize: 19,
                                  fontFamily: Raleway, fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              "Rahu yantra is the most powerful yantra, whose Rahu is weak. They should wear this yantra, without any second thought. But make sure the provide yantra should be energizing otherwise it will not work. According to astrology, Saturn, Rahu, and Ketu planets have been considering sinful planets. The presence of these planets in a person’s horoscope often gives inauspicious results. If there is a sinful planet of the planet Swami in the horoscope of a person, then this planet gives auspicious results to that person. If we talk about the Rahu planet then this planet is know as the Prapancha planet.",
                              style: TextStyle(color: Colors.black54, fontSize: 14,
                                fontFamily: Inter,),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),


                    Positioned(
                      right: 25,
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: Color(0xff341A9D),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 4,
                              offset: Offset(2, 4),
                            )
                          ]
                        ),
                        child: const Center(
                          child: FaIcon(
                            FontAwesomeIcons.heart,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
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