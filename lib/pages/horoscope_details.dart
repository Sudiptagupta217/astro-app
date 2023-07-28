import 'package:astro/widget/buttom_manu.dart';
import 'package:astro/widget/horoscope_today.dart';
import 'package:flutter/material.dart';

class HoroscopeDetails extends StatefulWidget {
  final String image;
  final String name;
  const HoroscopeDetails({Key? key, required this.image, required this.name})
      : super(key: key);

  @override
  State<HoroscopeDetails> createState() => _HoroscopeDetailsState();
}

class _HoroscopeDetailsState extends State<HoroscopeDetails> {


  List<Widget> myTabs = [
    SizedBox(
      width: 20.0,
      child: Tab(text: 'hello'),
    ),
    SizedBox(
      width: 70,
      child: Tab(text: 'world'),
    ),
  ];

  late TabController _tabController;

  int selectedIndex = 0;

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomMenu(
        selectedIndex: selectedIndex,
        onClicked: onClicked,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.33,

              decoration: BoxDecoration(
                color: Color(0xfffff9eb),
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(50)),
                image: DecorationImage(
                  image: AssetImage("assets/images/horoscope_bg.png"),fit: BoxFit.cover
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Color(0x1a000000),
                      blurRadius: 6.0,
                      spreadRadius: 2.0,
                      offset: Offset(0.0, 0.1))
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(

                      padding: EdgeInsets.symmetric(horizontal: 25),
                      margin: EdgeInsets.only(top: 50),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.name,
                              style: TextStyle(
                                  fontSize: 38, fontWeight: FontWeight.w700),
                            ),
                            Text("09 Sep 1995")
                          ],
                        ),
                        Image(
                          image: AssetImage(widget.image),
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                  ),
                  
                ],
              ),
            ),


            SizedBox(height: 30,),

            DefaultTabController(
              length: 3,
              child: SizedBox(
                height: MediaQuery.of(context).size.height,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.75,

                      child: TabBar(
                        tabs: <Widget>[
                          Tab(
                            child: Text("Today", style: TextStyle(color: Colors.black),),
                          ),
                          Tab(
                            child: Text("Tomorrow", style: TextStyle(color: Colors.black),),
                          ),
                          Tab(
                            child: Text("Month", style: TextStyle(color: Colors.black),),
                          ),

                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: <Widget>[
                          HoroscopeToday(),
                          HoroscopeToday(),
                          HoroscopeToday(),



                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
