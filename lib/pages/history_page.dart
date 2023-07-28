import 'package:flutter/material.dart';

import '../widget/buttom_manu.dart';
import '../widget/drawer_manu.dart';

class UserHistory extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HistoryState();
}

class HistoryState extends State<UserHistory> {
  int selectedIndex = 0;

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var history = [
      {
        'time': 'now',
        'body':
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor"
      },
      {
        'time': '45 minutes ago',
        'body':
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor"
      },
      {
        'time': '45 minutes ago',
        'body':
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor"
      },
      {
        'time': '45 minutes ago',
        'body':
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor"
      },
      {
        'time': '45 minutes ago',
        'body':
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor"
      },
      {
        'time': '45 minutes ago',
        'body':
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor"
      },
      {
        'time': '45 minutes ago',
        'body':
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor"
      },
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
                          child: Text(
                            "History",
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
                    padding: EdgeInsets.only( right: 20, left: 20),
                    decoration: BoxDecoration(
                        color: Color(0xFFF8F8F9),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.0),
                        )
                    ),
                    child:
                    Column(
                      children: [
                        ListView.builder(
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return
                              Card(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                elevation: 0.05,
                                shadowColor: Colors.grey,
                                child:

                              Container(
                                padding: EdgeInsets.only(top: 15,bottom: 15,left: 15,right: 15),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                        'assets/images/profile.png',
                                        fit: BoxFit.cover,
                                        width: 50,
                                        height: 50),

                                    SizedBox(width: 8,),
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        mainAxisAlignment:  MainAxisAlignment.start,
                                        children: [
                                          Text(history[index]['body']!,
                                            maxLines: 3,
                                            style: TextStyle(color: Colors.black87,),),
                                          SizedBox(height: 15,),
                                          Row(
                                            children: [
                                              Text(history[index]['time']!,
                                              style: TextStyle(color: Colors.black54),),
                                              Spacer(),
                                              Text("Delete",
                                                style: TextStyle(color: Colors.red,fontSize: 15,fontWeight: FontWeight.w500),),
                                            ],
                                          )
                                        ],
                                      ),
                                    )

                                  ],
                                ),
                              )

                            );
                          },
                          itemCount: history.length,
                          scrollDirection: Axis.vertical,
                        ),
                      ],
                    ) ,

                  )
                ]
            ),



          ),
        )
    );
  }
}