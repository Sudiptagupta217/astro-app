import 'package:flutter/material.dart';

class AstroCard extends StatefulWidget {
  final String image;
  final String text;
  final buttontapped;

  const AstroCard({Key? key, required this.image,required this.text, this.buttontapped}) : super(key: key);

  @override
  State<AstroCard> createState() => _AstroCardState();
}

class _AstroCardState extends State<AstroCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      padding: EdgeInsets.only(left: 15, top: 8, bottom: 8),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            spreadRadius: 1,
            blurRadius: 10,
            color: Colors.black.withOpacity(0.2),
            offset: Offset(0.0, 1.0)),
      ], color: Colors.white,
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(25))

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.27,
                  child:  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 20,top: 10),
                        height: 145,
                        // decoration: BoxDecoration(
                        //   // image: DecorationImage(
                        //   //     image:
                        //   //     AssetImage(widget.image)
                        //   //     //NetworkImage(widget.image),fit: BoxFit.cover
                        //   // ),
                        //   borderRadius: BorderRadius.only(bottomRight: Radius.circular(25)),
                        //
                        // ),
                        child: ClipRRect(borderRadius: BorderRadius.only(bottomRight: Radius.circular(25)), child: Image.asset(widget.image,fit: BoxFit.cover)),
                      ),
                      Positioned(
                        child: Container(
                          padding:
                          EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 3),
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius
                                .circular(50),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color(
                                    0xffDDDDDD),
                                blurRadius: 2.0,
                                spreadRadius: 0.5,
                                offset: Offset(
                                    0.0, 1.0),
                              )
                            ],
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Color(
                                    0xffffce31),
                              ),
                              Text("5")
                            ],
                          ),
                        ),
                        bottom: 5,
                        left: 10,
                      )
                    ],
                  )
              ),

              Container(
                width: MediaQuery.of(context).size.width * 0.43,
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 7,),
                    Row(
                      children: [
                        Text("John Doe", style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 22
                        ),)
                      ],
                    ),
                    SizedBox(height: 7,),


                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/horo.png"),
                        Text("Vasthu, Vedic ", style: TextStyle(
                            color: Color(0xFF616161),
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        ),),
                        Text("+7 more", style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        ),)
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 4,),
                        Image.asset("assets/images/lang.png"),
                        SizedBox(width: 4,),
                        Text("English, Hindi, Punjabi", style: TextStyle(
                            color: Color(0xFF616161),
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        ),),

                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 4,),
                        Image.asset("assets/images/exp.png"),
                        SizedBox(width: 4,),
                        Text("10 Years", style: TextStyle(
                            color: Color(0xFF616161),
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        ),),

                      ],
                    ),
                    SizedBox(height: 10,),


                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 3,),
                        Image.asset("assets/images/money_symbol.png"),
                        SizedBox(width: 5,),
                        Text("30/min", style: TextStyle(
                            color: Color(0xFF030303),
                            fontSize: 14,
                            fontWeight: FontWeight.w600
                        ),),

                      ],
                    ),
                    Row(
                      children: [
                        //SizedBox(width: 50,),
                        Spacer(),
                        TextButton(
                          onPressed: (){widget.buttontapped();},
                          style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                              elevation: 2,
                              foregroundColor: Colors.white,
                              backgroundColor: Color(0xFF0341A9)
                          ),
                          child: Text(widget.text),
                        ),
                      ],
                    )


                  ],
                ),
              )

            ],
          ),





        ],
      ),
    );
  }
}
