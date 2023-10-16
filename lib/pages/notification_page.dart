import 'package:flutter/material.dart';
import '../widget/buttom_manu.dart';
import '../widget/drawer_manu.dart';
import '../widget/notification_card.dart';

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
                          "Notifications",
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
                    padding: const EdgeInsets.only( right: 20, left: 20),
                    decoration: const BoxDecoration(
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
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return NotificationCard(
                              title: notification[index]['title'].toString(),
                              body: notification[index]['body'].toString(),
                              time: notification[index]['time'].toString(),
                              name: "Hi Anastassia!");
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