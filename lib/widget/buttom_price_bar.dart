import 'package:flutter/material.dart';

class BottomPriceBar extends StatefulWidget {
  @override
  State<BottomPriceBar> createState() => _BottomPriceBarState();
}

class _BottomPriceBarState extends State<BottomPriceBar> {
  int count=1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF6F6F6),
      child: Container(
        height: 60,
        decoration: const BoxDecoration(
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
              const SizedBox(width: 10,),
              const Text("Rs.3500",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              const Spacer(),

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
                    InkWell(
                      onTap: () {
                        setState(() {
                          count--;
                        });
                      },
                        child: const Text("–",style: TextStyle(fontSize: 15),)),

                    Text(count.toString(),style: const TextStyle(fontSize: 15),),

                    InkWell(
                      onTap: () {
                        setState(() {
                          count++;
                        });
                      },
                        child: const Text("+",style: TextStyle(fontSize: 15),)),

                  ],
                ),
              ),
              const SizedBox(width: 20,),

              TextButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/mycart');
                },
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    elevation: 2,
                    foregroundColor: Colors.white,
                    backgroundColor: const Color(0xFF0341A9)
                ),
                child: const Text("Cart"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
