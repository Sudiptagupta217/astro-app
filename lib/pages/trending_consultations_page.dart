import 'package:astro/utils/default_colors.dart';
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
                    const Text("Trending Consultations",
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
           padding: const EdgeInsets.only(top: 10, right: 30, left: 30),
           decoration: const BoxDecoration(
               color: DefaultColor.bg_color,
               borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(50.0),
               )
           ),
         child:
         SizedBox(
           height: MediaQuery.of(context).size.height,
           child: GridView.builder(itemBuilder: (context, index) {
             return
               InkWell(
                 onTap: () {
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
                   child:Center(child: Text(trending[index]['title'] as String, style: const TextStyle(color: Colors.white, fontSize: 20),))),
               );
           },
             itemCount: trending.length,
             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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