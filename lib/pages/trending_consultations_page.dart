import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/buttom_manu.dart';
import '../widget/drawer_manu.dart';
import 'trending_consultantations_type_page.dart';

class TrendingConsultations extends StatefulWidget{
  const TrendingConsultations({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() =>TrendingConsultationsState();
}

class TrendingConsultationsState extends State<TrendingConsultations>{
  int selectedIndex = 0;

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {

    var trending=[
      {'image': 'assets/images/health.png', 'title': 'Health', },
      {'image': 'assets/images/love.png', 'title': 'Love Life', },
      {'image': 'assets/images/career.png', 'title': 'Career', },
      {'image': 'assets/images/marridge.png', 'title': 'Marriage', },
      {'image': 'assets/images/family.png', 'title': 'Family', },
      {'image': 'assets/images/finance.png', 'title': 'Finance', },
    ];

   return Scaffold(
       drawer: DrawerManu(),
       bottomNavigationBar: BottomMenu(
         selectedIndex: selectedIndex,
         onClicked: onClicked,
       ),
     body:SingleChildScrollView(
       child: Container(
         width: MediaQuery.of(context).size.width,
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
                      child: Text("Trending Consultations",
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
           padding: EdgeInsets.only(top: 10, right: 30, left: 30),
           decoration: BoxDecoration(
               color: Color(0xFFF8F8F9),
               borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(50.0),
               )
           ),
         child:
         Container(
           height: MediaQuery.of(context).size.height,
           child: GridView.builder(itemBuilder: (context, index) {
             return
               InkWell(
                 onTap: () {
                 //  Navigator.pushNamed(context, '/astrologers_list');
                   Navigator.push(
                       context, MaterialPageRoute(builder: (context) => TrendingConsultationsType(id: trending[index],  title: trending[index]['title'])));
                 },
                 child: Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(7),
                    // color: Colors.red,
                     image: DecorationImage(
                       image: AssetImage(trending[index]['image']!),
                       fit: BoxFit.fill,
                     ),
                   ),
                   child:Center(child: Text(trending[index]['title'] as String, style: TextStyle(color: Colors.white, fontSize: 20),))),
               );
           },
             itemCount: trending.length,
             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 2,
                 crossAxisSpacing: 10,
                 mainAxisSpacing: 10
             ),),
         ) ,

          )
            ]
        ),



       ),
     )
   );
  }

}