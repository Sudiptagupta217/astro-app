import 'package:astro/utils/Custom_Font.dart';
import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  final String title;
  final String body;
  final String name;
  final String time;
  const NotificationCard({super.key, required this.title, required this.body, required this.time, required this.name});

  @override
  Widget build(BuildContext context) {
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
                  Icon(Icons.circle,color:  Color(0xFF341A9D),size: 16,),
                  SizedBox(width: 4,),
                  Text(title,style: TextStyle(fontFamily: Roboto,
                      color: Color(0xFF341A9D),fontWeight: FontWeight.w500,fontSize: 13)),
                  SizedBox(width: 4,),
                  Text(time,style: TextStyle(fontFamily: Roboto,
                      color: Colors.black54,fontSize: 13)),
                  Spacer(),
                  Icon(Icons.keyboard_arrow_up,color: Colors.grey,)
                ],
              ),
              SizedBox(height: 4),
              Text(name,maxLines: 1, style: TextStyle(fontFamily: Roboto,
                  color: Colors.black87,fontSize: 15,fontWeight: FontWeight.w500),),
              SizedBox(height: 2),
              Text(body,maxLines: 2,style: TextStyle(fontFamily: Roboto,fontSize: 13,color: Color(0xff686868)),)
            ],
          ),
        )

    );
  }
}
