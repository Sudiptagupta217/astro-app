import 'package:flutter/material.dart';

class BottomPriceBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF6F6F6),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Color(0xffDDDDDD),
                blurRadius: 10,
                spreadRadius: 0,
               ),
          ],
        ),

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              SizedBox(width: 10,),
              Text("Rs.3500",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              Spacer(),

              Container(
                decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(20),
                    //color: Colors.yellow,
                    border: Border.all(width: 1,color: Colors.grey)),
                height: 30,
                width: 75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("-",style: TextStyle(fontSize: 15),),
                    Text("1",style: TextStyle(fontSize: 15),),
                    Text("+",style: TextStyle(fontSize: 15),),

                  ],
                ),
              ),
              SizedBox(width: 20,),

              TextButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/mycart');
                },
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    elevation: 2,
                    foregroundColor: Colors.white,
                    backgroundColor: Color(0xFF0341A9)
                ),
                child: Text("Cart"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
