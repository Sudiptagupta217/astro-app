import 'package:flutter/material.dart';

import '../widget/buttom_manu.dart';
import '../widget/drawer_manu.dart';

class UserNotification extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NotificationState();
}

class NotificationState extends State<UserNotification> {
  int selectedIndex = 0;

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var notification = [
      {
        'title': 'Horoscope',
        'time': 'now',
        'body':
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor"
      },
      {
        'title': 'Card Reading',
        'time': 'now',
        'body':
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor"
      },
      {
        'title': 'Saturn Transit',
        'time': 'now',
        'body':
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor"
      },
      {
        'title': 'Card Reading',
        'time': 'now',
        'body':
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor"
      },
      {
        'title': 'Horoscope',
        'time': 'now',
        'body':
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor"
      },
      {
        'title': 'Saturn Transit',
        'time': 'now',
        'body':
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor"
      },
      {
        'title': 'Saturn Transit',
        'time': 'now',
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
                            "Notifications",
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
                            return Card(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                                elevation: 0.05,
                                shadowColor: Colors.grey,
                                child:
                              //Text(notification[index]['title']!,style: TextStyle(fontSize: 22),)

                              Container(
                                padding: EdgeInsets.only(top: 15,bottom: 15,left: 20,right: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.circle,color:  Color(0xFF341A9D),size: 18,),
                                        SizedBox(width: 4,),
                                        Text(notification[index]['title']!,style: TextStyle(
                                            color: Color(0xFF341A9D),fontWeight: FontWeight.w500,fontSize: 16)),
                                        SizedBox(width: 4,),
                                        Text(notification[index]['time']!,style: TextStyle(
                                            color: Colors.black54,fontSize: 14)),
                                        Spacer(),
                                        Icon(Icons.keyboard_arrow_up,color: Colors.grey,)
                                      ],
                                    ),
                                    SizedBox(height: 4),
                                    Text("Hi Anastassia!",maxLines: 1, style: TextStyle(
                                        color: Colors.black87,fontSize: 18,fontWeight: FontWeight.w500),),
                                    SizedBox(height: 2),
                                    Text(notification[index]['body']!,maxLines: 2,style: TextStyle(color: Colors.black54),)
                                  ],
                                ),
                              )

                            );
                          },
                          itemCount: notification.length,
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